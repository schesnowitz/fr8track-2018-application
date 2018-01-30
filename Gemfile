source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.2'  

gem 'rails', '~> 5.2.0.beta2'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'bootstrap', '~> 4.0.0.beta2.1'
gem 'nokogiri', '~> 1.8', '>= 1.8.1'
gem 'jquery-rails'
gem 'bootstrap-sass-extras'
gem 'uglifier', '>= 1.3.0'
# gem 'mini_racer', platforms: :ruby
gem 'coffee-rails', '~> 4.2'
# gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'redis', '~> 4.0'
gem 'mini_magick', '~> 4.8'
gem 'faker', '~> 1.8', '>= 1.8.4'
gem 'sidekiq', '~> 5.0', '>= 5.0.5'
gem 'sidekiq-cron', '~> 0.6.3'
gem 'simple_form', '~> 3.5' # rails generate simple_form:install --bootstrap
gem 'devise', '~> 4.4'
gem 'geocoder', '~> 1.4', '>= 1.4.5'
gem 'font-awesome-sass', '~> 4.7.0'
gem 'httparty', '~> 0.15.6'
gem 'local_time', '~> 2.0'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false



group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem "figaro" # bundle exec figaro install
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
