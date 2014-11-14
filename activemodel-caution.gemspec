# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'active_model/cautions/version'

Gem::Specification.new do |spec|
  spec.name          = "activemodel-caution"
  spec.version       = ActiveModel::Caution::VERSION
  spec.authors       = ["Josh Pencheon"]
  spec.email         = ["josh.pencheon@ecric.nhs.uk"]
  spec.description   = "Adds cautioning to ActiveModel"
  spec.summary       = "Warnings are non-enforced validations, and otherwise work in the same way."
  spec.homepage      = ""

  spec.files         = Dir['lib/**/*']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency('activerecord',  spec.version)
  spec.add_dependency('activemodel',   spec.version)
  spec.add_dependency('activesupport', spec.version)
  spec.add_dependency('actionpack',    spec.version)
  spec.add_dependency('railties',      spec.version)

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "sqlite3"
end
