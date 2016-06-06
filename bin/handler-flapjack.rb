#!/usr/bin/env ruby
#
# Sensu FLAPJACK Handler
# ===
#


require 'sensu-handler'
require 'redis'
require 'multi_json'
require 'date'

class FLAPJACK < Sensu::Handler
  STATUSES = {
    0 => 'OK',
    1 => 'WARNING',
    2 => 'CRITICAL'
  }.freeze

  def event_name
    @event['client']['name'] + '/' + @event['check']['name']
  end

  def action_to_string
    @event['action'].eql?('resolve') ? 'RESOLVED' : 'ALERT'
  end

  def handle
    redis_options = {
      host: settings['flapjack']['host'] || '127.0.0.1',
      port:  settings['flapjack']['port'] || 6379,
      channel: 'events',
      db: settings['flapjack']['db'] || 0
    }

    return if @event['action'].eql?('resolve')

    client = @event['client']
    check = @event['check']

    tags = []
    tags.concat(client['tags']) if client['tags'].is_a?(Array)
    tags.concat(client['tags']) if check['tags'].is_a?(Array)
    if check['subscribers'].nil? || check['subscribers'].empty?
      tags.concat(client['subscriptions'])
    else
      tags.concat(client['subscriptions'] - (client['subscriptions'] - check['subscribers']))
    end

    details = ['Address: ' + client['address']]
    details << 'Tags: ' + tags.join(',')
    details << "Raw Output: #{check['output']}" if check['notification']

    flapjack_event = {
      entity: client['name'],
      check: check['name'],
      time: client['timestamp'].to_i,
      state: STATUSES[check['status']],
      type: 'service',
      summary: check['notification'] || check['output'],
      details: details.join(' ')
    }

    if Redis.new(redis_options).ping == 'PONG'
      redis = Redis.new(redis_options)
      # ok, redis is alive
      redis.lpush(redis_options[:channel], MultiJson.dump(flapjack_event))
      puts "sent an event to the flapjack redis queue: #{flapjack_event}"
    else
      # bad, redis is dead
      puts 'Redis did not respond to the ping command'
    end
  end
end
