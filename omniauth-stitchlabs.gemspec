# coding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require 'omniauth/stitchlabs/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-stitchlabs"
  spec.version       = OmniAuth::StitchLabs::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ["Theo Mills"]
  spec.email         = ["theo@shippingeasy.com"]
  spec.summary       = "StitchLabs OAuth2 strategy for OmniAuth"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1.1'
  spec.add_development_dependency 'rspec', '~> 2.12'
  spec.add_development_dependency 'rack-test'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'coveralls'
end
