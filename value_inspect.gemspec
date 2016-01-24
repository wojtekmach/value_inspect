# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "value_inspect"
  spec.version       = "0.1.2"
  spec.authors       = ["Wojtek Mach"]
  spec.email         = ["wojtek@wojtekmach.pl"]

  spec.summary       = %q{Provides implementation of #inspect that is more readable and can be used in irb.}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/wojtekmach/value_inspect"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "values", "~> 1.8"
end
