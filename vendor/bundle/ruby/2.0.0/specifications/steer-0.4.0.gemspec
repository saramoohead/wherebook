# -*- encoding: utf-8 -*-
# stub: steer 0.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "steer"
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Rik Lomas", "Tim McDonald-Bell"]
  s.date = "2014-04-17"
  s.description = "For adding layouts and files to sites easily"
  s.email = ["rik@steer.me", "tim@andthats.it"]
  s.homepage = "http://rubygems.org/gems/steer"
  s.rubyforge_project = "steer"
  s.rubygems_version = "2.2.2"
  s.summary = "For students on the Steer back-end webdev course"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, [">= 1.0.0"])
    else
      s.add_dependency(%q<bundler>, [">= 1.0.0"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 1.0.0"])
  end
end
