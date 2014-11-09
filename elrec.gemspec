# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'elrec/version'

Gem::Specification.new do |spec|
  spec.name          = "elrec"
  spec.version       = Elrec::VERSION
  spec.authors       = ["toru1055"]
  spec.email         = ["toru1055h@gmail.com"]
  spec.description   = %q{Simple elrec client for ruby.}
  spec.summary       = %q{This is a simple elrec client for ruby.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
