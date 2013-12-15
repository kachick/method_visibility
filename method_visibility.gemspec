# coding: us-ascii

Gem::Specification.new do |gem|
  gem.name          = 'method_visibility'
  gem.version       = '0.0.1'
  gem.authors       = ['Kenichi Kamiya']
  gem.email         = ['kachick1+ruby@gmail.com']
  gem.summary       = 'Get visibility for a method name.'
  gem.description   = gem.summary.dup
  gem.homepage      = 'http://kachick.github.com/method_visibility/'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.required_ruby_version = '>= 1.8.7'

  gem.add_runtime_dependency 'visibility_predicates', '~> 0.0.1'

  gem.add_development_dependency 'yard', '~> 0.8'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'bundler'
end
