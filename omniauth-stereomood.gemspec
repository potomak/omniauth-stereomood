# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-stereomood/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-stereomood"
  s.version     = Omniauth::Stereomood::VERSION
  s.authors     = ["Giovanni Cappellotto"]
  s.email       = ["potomak84@gmail.com"]
  s.homepage    = "https://github.com/potomak/omniauth-stereomood"
  s.summary     = %q{OmniAuth strategy for Stereomood}
  s.description = %q{OmniAuth strategy for Stereomood}

  s.rubyforge_project = "omniauth-stereomood"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'omniauth-oauth', '~> 1.0'
  s.add_development_dependency 'rspec', '~> 2.7'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'webmock'  
end
