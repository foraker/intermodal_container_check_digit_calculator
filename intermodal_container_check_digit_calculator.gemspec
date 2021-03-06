# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'intermodal_container_check_digit_calculator/version'

Gem::Specification.new do |spec|
  spec.name          = "intermodal_container_check_digit_calculator"
  spec.version       = IntermodalContainerCheckDigitCalculator::VERSION
  spec.authors       = ["Tom Piekos"]
  spec.email         = ["tep@foraker.com"]
  spec.summary       = %q{Facilitates check digit calculation for intermodal shipping containers.}
  spec.description   = %q{Facilitates check digit calculation for intermodal shipping containers.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
