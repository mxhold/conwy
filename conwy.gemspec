# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'conwy/version'

Gem::Specification.new do |spec|
  spec.name          = 'conwy'
  spec.version       = Conwy::VERSION
  spec.authors       = ['Max Holder']
  spec.email         = ['mxhold@gmail.com']
  spec.summary       = %( Conway's Game of Life )
  spec.description   = %( a simple implementntaintiaonn )
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
end
