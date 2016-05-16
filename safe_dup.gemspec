# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'safe_dup/version'

Gem::Specification.new do |spec|
  spec.name          = "safe_dup"
  spec.version       = SafeDup::VERSION
  spec.authors       = ["Peter Camilleri"]
  spec.email         = ["peter.c.camilleri@gmail.com"]

  spec.description   = "A safer version of the dup method that avoids unnecessary exceptions."
  spec.summary       = "A safer version of the dup method."
  spec.homepage      = "http://teuthida-technologies.com/"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'minitest_visible', ">= 0.1.0"
  spec.add_development_dependency 'mini_readline', ">= 0.4.8"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'minitest', "~> 5"
end
