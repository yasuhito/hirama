# encoding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hirama/version'

Gem::Specification.new do |gem|
  gem.name = 'hirama'
  gem.version = Hirama::VERSION
  gem.summary = 'GitHub issues CLI.'
  gem.description = 'Command line interface for GitHub issues.'

  gem.license = 'GPL3'

  gem.authors = ['Yasuhito Takamiya']
  gem.email = ['yasuhito@gmail.com']
  gem.homepage = 'http://github.com/yasuhito/hirama'

  gem.executables = ['hirama']

  gem.files = %w(LICENSE Rakefile hirama.gemspec)
  gem.files += Dir.glob('lib/**/*.rb')
  gem.files += Dir.glob('bin/**/*')
  gem.files += Dir.glob('features/**/*')

  gem.require_paths = ['lib']

  gem.extra_rdoc_files = ['README.md']
  gem.test_files += Dir.glob('features/**/*')

  gem.required_ruby_version = '>= 1.9.3'
end
