require File.join(File.dirname(__FILE__), "lib", "active_admin", "version")

Gem::Specification.new do |s|
  s.name          = 'activeadmin-rb'
  s.license       = 'MIT'
  s.version       = ActiveAdmin::VERSION
  s.homepage      = 'http://activeadmin.info'
  s.authors       = ['Greg Bell']
  s.email         = ['gregdbell@gmail.com']
  s.description   = 'The administration framework for Ruby on Rails.'
  s.summary       = 'The administration framework for Ruby on Rails.'

  s.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(spec|features)/})
  end

  s.test_files = `git ls-files -- {spec,features}/*`.split("\n")

  s.required_ruby_version = '>= 2.5'

  s.add_dependency 'arbre', '>= 1.1.1'
  s.add_dependency 'coffee-rails'
  s.add_dependency 'formtastic'
  s.add_dependency 'formtastic_i18n'
  s.add_dependency 'inherited_resources', '>= 1.9.0'
  s.add_dependency 'jquery-rails', '>= 4.2.0'
  s.add_dependency 'jquery-ui-rails', '~> 6.0'
  s.add_dependency 'kaminari', '>= 1.0.1'
  s.add_dependency 'railties', '>= 5.0'
  s.add_dependency 'ransack', '>= 1.8.7'
  s.add_dependency 'sass-rails'
  s.add_dependency 'sprockets'
end
