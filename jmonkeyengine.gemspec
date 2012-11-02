# -*- encoding: utf-8 -*-
require File.expand_path('../lib/jmonkeyengine/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jeremy Woertink"]
  gem.email         = ["jeremywoertink@gmail.com"]
  gem.description   = "jMonkeyEngine is a 3D Video Game Framework. This is the JRuby Wrapper"
  gem.summary       = "see description"
  gem.homepage      = "http://jmonkeyengine.org"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "jmonkeyengine"
  gem.require_paths = ["lib"]
  gem.version       = JME::VERSION
  
  gem.add_development_dependency "rspec"
end
