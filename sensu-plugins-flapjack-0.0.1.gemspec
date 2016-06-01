# -*- encoding: utf-8 -*-
# stub: sensu-plugins-flapjack 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "sensu-plugins-flapjack"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.metadata = { "development_status" => "active", "maintainer" => "sensu-plugin", "production_status" => "unstable - testing recommended", "release_draft" => "false", "release_prerelease" => "false" } if s.respond_to? :metadata=
  s.require_paths = ["lib"]
  s.authors = ["Ionut and Juan"]
  s.date = "2016-06-01"
  s.description = "Sensu flapjack plugin"
  s.email = "<ionut.andriescu@gameloft.com>"
  s.executables = ["handler-flapjack.rb"]
  s.files = ["CHANGELOG.md", "LICENSE", "README.md", "bin/handler-flapjack.rb", "lib/sensu-plugins-flapjack.rb", "lib/sensu-plugins-flapjack/version.rb"]
  s.homepage = "https://github.com/iandr/sensu-plugins-flapjack"
  s.licenses = ["MIT"]
  s.post_install_message = "You can use the embedded Ruby by setting EMBEDDED_RUBY=true in /etc/default/sensu"
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0")
  s.rubygems_version = "2.5.1"
  s.summary = "Sensu flapjack plugins"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sensu-plugin>, ["~> 1.2"])
      s.add_runtime_dependency(%q<redis>, ["~> 3.3"])
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.12"])
      s.add_development_dependency(%q<codeclimate-test-reporter>, ["~> 0.4"])
      s.add_development_dependency(%q<rubocop>, ["~> 0.30"])
      s.add_development_dependency(%q<rspec>, ["~> 3.1"])
      s.add_development_dependency(%q<bundler>, ["~> 1.7"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<github-markup>, ["~> 1.3"])
      s.add_development_dependency(%q<redcarpet>, ["~> 3.2"])
      s.add_development_dependency(%q<yard>, ["~> 0.8"])
      s.add_development_dependency(%q<pry>, ["~> 0.10"])
    else
      s.add_dependency(%q<sensu-plugin>, ["~> 1.2"])
      s.add_dependency(%q<redis>, ["~> 3.3.0"])
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.12"])
      s.add_dependency(%q<codeclimate-test-reporter>, ["~> 0.4"])
      s.add_dependency(%q<rubocop>, ["~> 0.30"])
      s.add_dependency(%q<rspec>, ["~> 3.1"])
      s.add_dependency(%q<bundler>, ["~> 1.7"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<github-markup>, ["~> 1.3"])
      s.add_dependency(%q<redcarpet>, ["~> 3.2"])
      s.add_dependency(%q<yard>, ["~> 0.8"])
      s.add_dependency(%q<pry>, ["~> 0.10"])
    end
  else
    s.add_dependency(%q<sensu-plugin>, ["~> 1.2"])
    s.add_dependency(%q<redis>, ["~> 3.3.0"])
    s.add_runtime_dependency(%q<multi_json>, ["~> 1.12"])
    s.add_dependency(%q<codeclimate-test-reporter>, ["~> 0.4"])
    s.add_dependency(%q<rubocop>, ["~> 0.30"])
    s.add_dependency(%q<rspec>, ["~> 3.1"])
    s.add_dependency(%q<bundler>, ["~> 1.7"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<github-markup>, ["~> 1.3"])
    s.add_dependency(%q<redcarpet>, ["~> 3.2"])
    s.add_dependency(%q<yard>, ["~> 0.8"])
    s.add_dependency(%q<pry>, ["~> 0.10"])
  end
end

