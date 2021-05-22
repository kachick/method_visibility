# coding: us-ascii

Gem::Specification.new do |gem|
  # specific
  gem.name          = 'method_visibility'
  gem.description   = 'Get visibility for a method name.'
  gem.summary       = gem.description.dup
  gem.license       = 'MIT'
  gem.version       = '0.1.0'

  gem.add_runtime_dependency 'visibility_predicates', '~> 0.0.2'

  gem.add_development_dependency 'test-unit', '>= 3.3.3', '< 4'
  gem.add_development_dependency 'yard', '>= 0.9.20', '< 2'
  gem.add_development_dependency 'rake', '>= 10', '< 20'
  gem.add_development_dependency 'bundler', '>= 2', '< 3'

  if RUBY_ENGINE == 'rbx'
    gem.add_dependency 'rubysl', '~> 2.0'
    gem.add_dependency 'rubysl-test-unit', '~> 2.0'
  end

  # common

  gem.authors       = ['Kenichi Kamiya']
  gem.email         = ['kachick1+ruby@gmail.com']
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end
