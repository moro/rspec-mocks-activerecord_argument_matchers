# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/mocks/activerecord_argument_matchers/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec-mocks-activerecord_argument_matchers"
  spec.version       = RSpec::Mocks::ActiverecordArgumentMatchers::VERSION
  spec.authors       = ["moro"]
  spec.email         = ["moronatural@gmail.com"]
  spec.summary       = %q{Argument matcher for asserting AR object equality.}
  spec.description   = %q{Argument matcher for asserting AR object equality.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
