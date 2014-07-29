# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lol_api/version'

Gem::Specification.new do |gem|
  gem.name          = "lol_api"
  gem.version       = LolApi::VERSION
  gem.authors       = ["eankorins"]
  gem.email         = ["eankorins@gmail.com"]
  gem.summary       = "Gem for League of Legends API"
  gem.description   = "Utilizes exposed methods of the League of Legends public API"
  gem.homepage      = ""
  gem.license       = "MIT"

  gem.files         = `git ls-files -z`.split("\x0")
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'faraday', '~> 0.8.4'
  gem.add_dependency 'faraday_middleware', '~> 0.9.0'
  gem.add_development_dependency 'rake', '~> 10.0.3'
  gem.add_development_dependency 'minitest', '~> 4.5.0'
  gem.add_development_dependency 'webmock', '~> 1.9.0'
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "guard"
  gem.add_development_dependency "guard-rspec"
end
