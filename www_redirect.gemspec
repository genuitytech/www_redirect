# -*- encoding: utf-8 -*-
require File.expand_path('../lib/www_redirect/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["hoverlover"]
  gem.email         = ["chad@genuitytech.com"]
  gem.description   = %q{Railtie providing middleware to redirect naked domain to www.}
  gem.summary       = gem.description
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "www_redirect"
  gem.require_paths = ["lib"]
  gem.version       = WWWRedirect::VERSION
end
