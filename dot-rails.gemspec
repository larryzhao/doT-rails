# encoding: utf-8
require File.expand_path('../lib/doT/rails/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "doT-rails"
  s.version     = DoT::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Larry Zhao"]
  s.email       = ["thehiddendepth@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/doT-rails"
  s.summary     = ""
  s.description = ""

  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency             "rails", ">= 3.1.0"
  s.add_dependency             "therubyracer"
  s.add_development_dependency "bundler"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").select{|f| f =~ /^bin/}
  s.require_path = 'lib'
end
