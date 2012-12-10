# -*- encoding: utf-8 -*-
lib = File.expand_path('../../sunspot/lib/', __FILE__)

$:.unshift(lib) unless $:.include?(lib)

require 'sunspot/version'

Gem::Specification.new do |s|
  s.name        = "sunspot_solr4"
  s.version     = Sunspot::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Charles Lrr']
  s.email       = ["charleetm@outlook.com"]
  s.homepage    = 'https://github.com/outoftime/sunspot/tree/master/sunspot_solr'
  s.summary     = 'Bundled Solr 4 distribution for Sunspot'
  s.description = <<-TEXT
    Sunspot::Solr provides a bundled Solr 4 distribution for use with Sunspot.
    Typical deployment environments will require more configuration, but this
    distribution is well suited to development and testing.
  TEXT

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'escape', '~>0.0.4'

  s.add_development_dependency 'rspec', '~> 1.1'
  s.add_development_dependency 'hanna'

end
