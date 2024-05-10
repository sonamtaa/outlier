# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.4'

gem 'bootsnap', require: false
gem 'pg'
gem 'puma'
gem 'rack-cors'
gem 'rails', '~> 7.1.3'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'brakeman'
  gem 'bullet'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'guard-rspec', require: false
  gem 'letter_opener'
  gem 'rubocop', require: false
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'bundle-audit', require: false
  gem 'database_cleaner'
  gem 'rails_best_practices'
  gem 'rspec-rails'
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rake', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubycritic', require: false
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
end
