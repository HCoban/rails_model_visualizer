# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_model_visualizer/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_model_visualizer"
  spec.version       = RMVisualizer::VERSION
  spec.authors       = ["Halil Coban"]
  spec.email         = ["halil.coban@gmail.com"]

  spec.summary       = %q{RailsModelVisualizer is a ruby gem which
    improves documentation of rails apps by generating an html output
    visualizing rails models.}
  spec.homepage      = "https://github.com/HCoban/rails_model_visualizer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency "rails", "~> 4.1"
  spec.add_runtime_dependency 'launchy', '~> 2.4', '>= 2.4.3'
  spec.add_runtime_dependency 'fileutils', '~> 0.7'

end
