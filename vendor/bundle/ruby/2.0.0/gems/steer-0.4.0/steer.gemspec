# -*- encoding: utf-8 -*-
require File.expand_path("../lib/steer/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "steer"
  s.version     = Steer::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Rik Lomas", "Tim McDonald-Bell"]
  s.email       = ["rik@steer.me", "tim@andthats.it"]
  s.homepage    = "http://rubygems.org/gems/steer"
  s.summary     = "For students on the Steer back-end webdev course"
  s.description = "For adding layouts and files to sites easily"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "steer"

  s.add_development_dependency "bundler", ">= 1.0.0"
  
  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
