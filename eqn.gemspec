# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eqn/version'

config_files = %w(.rspec .rubocop.yml .ruby-version Appraisals .circleci/config.yml)

Gem::Specification.new do |spec|
  spec.name          = 'eqn'
  spec.version       = Eqn::VERSION
  spec.authors       = ['Zach Schneider']
  spec.email         = ['zach@aha.io']

  spec.summary       = 'A gem to evaluate mathematical equations.'
  spec.description   = 'A gem to evaluate mathematical equations. Includes support for variables and functions.'
  spec.homepage      = 'https://github.com/schneidmaster/eqn'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| config_files.include?(f) || f.match(%r{^(spec|gemfiles)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'treetop', '>= 1.6.12'

  spec.add_development_dependency 'appraisal', '~> 2.5.0'
  spec.add_development_dependency 'bundler', '>= 2.5'
  spec.add_development_dependency 'codeclimate-test-reporter', '~> 1.0'
  spec.add_development_dependency 'rake', '~> 13.2'
  spec.add_development_dependency 'rubocop', '~> 1.66'
  spec.add_development_dependency 'rubocop-rspec', '~> 3.1.0'
  spec.add_development_dependency 'rspec', '~> 3.13.0'
  spec.add_development_dependency 'simplecov', '~> 0.22.0'
end
