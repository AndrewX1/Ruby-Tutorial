# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'greetxu/version'

Gem::Specification.new do |gem|
  gem.name          = "greetxu"
  gem.version       = Greetxu::VERSION
  gem.authors       = ["Andrew Xu"]
  gem.email         = ["andrew.xu@istockphoto.com"]
  gem.description   = %q{Provides a random greet message for a given name}
  gem.summary       = %q{Random Greet Message}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
