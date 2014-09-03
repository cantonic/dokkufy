# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "dokkufy/info"

Gem::Specification.new do |s|
  s.name        = "dokkufy"
  s.version     = Dokkufy::VERSION
  s.authors     = ["Cristiano Betta"]
  s.email       = ["cbetta@gmail.com"]
  s.homepage    = "http://github.com/cbetta/dokkufy"
  s.summary     = Dokkufy::DESCRIPTION
  s.description = Dokkufy::DESCRIPTION
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'commander', ["~> 4.2.0"]
  s.add_dependency 'terminal-table', ["~> 1.4.5"]
  s.add_dependency 'hpricot', ["~> 0.8.6"]
end
