# -*- encoding: utf-8 -*-
require File.expand_path('../lib/redactor-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Sammy", "Serge", "Xana68"]
  gem.email         = ["sammylintw@gmail.com", "sergeg1990@gmail.com", "alex@glyph.fr"]
  gem.description   = "The redactor-rails gem integrates the Redactor editor with devise and with paperclip backend support"
  gem.summary       = ""
  gem.homepage      = "https://github.com/xana68/redactor-rails"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "redactor-rails"
  gem.require_paths = ["lib"]
  gem.version       = RedactorRails::VERSION

  gem.add_dependency("mime-types")
  gem.add_dependency("orm_adapter")
end
