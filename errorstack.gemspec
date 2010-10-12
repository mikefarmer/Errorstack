# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "errorstack/version"

Gem::Specification.new do |s|
  s.name        = "errorstack"
  s.version     = Errorstack::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mike Farmer"]
  s.email       = ["mike.farmer@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/errorstack"
  s.summary     = %q{Easily integrate ErrorStack with your ruby application.}
  s.description = %q{Allows you to easily integrate ErrorStack into your ruby application. (see http://errorstack.com)}

  s.rubyforge_project = "errorstack"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  #s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency("rest-client", [">= 1.6.1"])
  s.add_development_dependency("rspec", [">= 1.3.0"])
  s.add_development_dependency("guard-rspec", [">= 0.1.2"])

end
