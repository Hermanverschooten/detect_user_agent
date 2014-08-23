# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'detect_user_agent/version'

Gem::Specification.new do |spec|
  spec.name          = "detect_user_agent"
  spec.version       = DetectUserAgent::VERSION
  spec.authors       = ["Herman verschooten"]
  spec.email         = ["Herman@verschooten.net"]
  spec.summary       = %q{Detect browser, os and platform based upon user agent}
  spec.homepage      = "https://github.com/Hermanverschooten/detect_user_agent"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
