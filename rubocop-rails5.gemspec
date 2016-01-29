# encoding: utf-8

$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'rubocop/rspec/version'

Gem::Specification.new do |spec|
  spec.name = 'rubocop-rails5'
  spec.summary = 'See what you need to update for Rail 5.0 release'
  spec.description = <<-end_description
    
  end_description
  spec.homepage = 'http://github.com/notch8/rubocop-rails5'
  spec.authors = ['Vincent Colavin', 'Rob Kaufman']
  spec.email = ['vincent@notch8.com', 'rob@notch8.com']
  spec.licenses = ['MIT']

  spec.version = RuboCop::Rails5::Version::STRING
  spec.platform = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 1.9.3'

  spec.require_paths = ['lib']
  spec.files = Dir[
    '{config,lib,spec}/**/*',
    '*.md',
    '*.gemspec',
    'Gemfile',
    'Rakefile'
  ]
  spec.test_files = spec.files.grep(%r{^spec/})
  spec.extra_rdoc_files = ['MIT-LICENSE.md', 'README.md']

  spec.add_development_dependency('rubocop', '~> 0.31')
  spec.add_development_dependency('rake', '~> 10.1')
  spec.add_development_dependency('rspec', '~> 3.0')
  spec.add_development_dependency('simplecov', '~> 0.8')
end
