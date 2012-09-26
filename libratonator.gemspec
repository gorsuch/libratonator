# -*- encoding: utf-8 -*-
require File.expand_path('../lib/libratonator/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Michael Gorsuch"]
  gem.email         = ["michael.gorsuch@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "libratonator"
  gem.require_paths = ["lib"]
  gem.version       = Libratonator::VERSION
  gem.add_development_dependency('rake')
  gem.add_development_dependency('rspec')
  gem.add_dependency('librato-metrics')
end