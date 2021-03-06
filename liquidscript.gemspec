# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'liquidscript/version'

Gem::Specification.new do |spec|
  spec.name          = "liquidscript"
  spec.version       = Liquidscript::VERSION
  spec.authors       = ["Jeremy Rodi"]
  spec.email         = ["redjazz96@gmail.com"]
  spec.summary       = %q{A javascript-based language that compiles to javascript.}
  spec.description   = %q{A javascript-based language that compiles to javascript.}
  spec.homepage      = "https://github.com/medcat/liquidscript"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "yard"
  spec.add_development_dependency "command-runner"

  spec.add_dependency "hashie", "~> 2.0"
  spec.add_dependency "thor"
end
