# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "adhearsion_sinatra/version"

Gem::Specification.new do |s|
  s.name        = "adhearsion_sinatra"
  s.version     = AdhearsionSinatra::VERSION
  s.authors     = ["Alvaro Parres"]
  s.email       = ["aparres@gmail.com"]
  s.homepage    = ""
  s.summary     = "Sinatra Integration"
  s.description = ""

  s.rubyforge_project = "adhearsion_sinatra"

  # Use the following if using Git
  # s.files         = `git ls-files`.split("\n")
  # s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.files         = Dir.glob("{lib}/**/*") + %w( README.md Rakefile Gemfile)
  s.test_files    = Dir.glob("{spec}/**/*")
  s.require_paths = ["lib"]

  s.add_runtime_dependency %q<adhearsion>, ["~> 2.3"]
  s.add_runtime_dependency %q<activesupport>, [">= 3.0.10"]
  s.add_runtime_dependency %q<sinatra>, [">= 1.4.0"]

  s.add_development_dependency %q<bundler>, ["~> 1.0"]
  s.add_development_dependency %q<rspec>, ["~> 2.5"]
  s.add_development_dependency %q<rake>, [">= 0"]
  s.add_development_dependency %q<mocha>, [">= 0"]
  s.add_development_dependency %q<guard-rspec>
 end
