# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = 'casing'
  s.version = '0.0.3.1'
  s.summary = 'Convert the case of strings, symbols, and hash keys, including camelCase, PascalCase, and underscore_case'
  s.description = ' '

  s.authors = ['Obsidian Software, Inc']
  s.email = 'opensource@obsidianexchange.com'
  s.homepage = 'https://github.com/obsidian-btc/casing'
  s.licenses = ['MIT']

  s.require_paths = ['lib']
  s.files = Dir.glob('{lib}/**/*')
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.2.3'

  s.add_development_dependency 'minitest'
  s.add_development_dependency 'minitest-spec-context'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'runner'
end
