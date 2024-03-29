# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activities/version'

Gem::Specification.new do |spec|
  spec.name          = "activities"
  spec.version       = Activities::VERSION
  spec.authors       = ["Dave Sherratt"]
  spec.email         = ["dave@davesherratt.com"]
  spec.description   = %q{Activity tracker}
  spec.summary       = %q{Adds the ability to track user activities}
  spec.homepage      = "https://github.com/davesherratt/activities"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'activerecord'
end
