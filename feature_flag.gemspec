# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'feature_flag/version'

Gem::Specification.new do |spec|
  spec.name          = "feature_flag"
  spec.version       = FeatureFlag::VERSION
  spec.authors       = ["Tyler Mercier"]
  spec.email         = ["tylermercier@gmail.com"]
  spec.description   = %q{Ruby gem for tying feature flags to environment variables}
  spec.summary       = %q{Ruby gem for tying feature flags to environment variables}
  spec.homepage      = ""
  spec.license       = "MIT"
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
