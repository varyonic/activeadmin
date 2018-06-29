source 'https://rubygems.org'

gem 'activeadmin-core', path: 'activeadmin-core'

# Optional dependencies
gem 'cancan'
gem 'pundit'

# Utility gems used in both development & test environments
gem 'rake'
gem 'parallel_tests'

# Debugging
gem 'pry' # Easily debug from your console with `binding.pry`

# Code style
gem 'rubocop', '0.51.0'
gem 'mdl', '0.4.0'

# Translations
gem 'i18n-tasks'

# Documentation
gem 'yard'                        # Documentation generator
gem 'redcarpet', platforms: :mri  # Markdown implementation (for yard)
gem 'kramdown', platforms: :jruby # Markdown implementation (for yard)

group :development do
  # Debugging
  gem 'better_errors' # Web UI to debug exceptions. Go to /__better_errors to access the latest one

  gem 'binding_of_caller', platforms: :mri # Retrieve the binding of a method's caller

  # Performance
  gem 'rack-mini-profiler' # Inline app profiler. See ?pp=help for options.
end

group :test do
  gem 'capybara', '< 3.0'
  gem 'simplecov', require: false # Test coverage generator. Go to /coverage/ after running tests
  gem 'codecov', require: false # Test coverage website. Go to https://codecov.io
  gem 'cucumber-rails', '~> 1.5', require: false
  gem 'cucumber'
  gem 'database_cleaner'
  gem 'jasmine'
  gem 'jasmine-core', '2.9.1' # last release with Ruby 2.2 support.
  gem 'launchy'
  gem 'rails-i18n' # Provides default i18n for many languages
  gem 'rspec-rails'
  gem 'i18n-spec'
  gem 'shoulda-matchers', '<= 2.8.0'
  gem 'sqlite3', platforms: :mri
  gem 'selenium-webdriver'
  gem 'chromedriver-helper', '1.1.0' # 1.2 causing build failure with JRuby.
end
