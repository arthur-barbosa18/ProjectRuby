source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

# Base
gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', '>= 1.1.0', require: false
gem "pg", ">= 0.18", "< 2.0"
gem 'rack-cors', require: 'rack/cors'
gem 'rails', '~> 6.0.3'
gem 'puma', '~> 3.11'

#install apt-get install postgres-server-dev-{pg.version}
#sudo apt-get install postgresql

# App

gem 'interactor', '~> 3.0'
gem 'kaminari', '~> 1.1.1'
gem 'active_model_serializers', require: true
gem 'fast_jsonapi', '~> 1.2'
gem 'responders', '~> 3.0.0'
gem 'has_scope', '~> 0.7.2'
gem 'acts_as_paranoid', '~> 0.6.0'
gem 'paper_trail', '~> 11.1.0'
gem 'enumerize', '>= 2.2'
gem 'luhn', '~> 1.0', '>= 1.0.2'
gem 'cancancan', '~> 2.0'
gem 'jwt', '~> 2.1.0'
gem 'rswag', '~> 2.0.3'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'brakeman', require: false
  gem 'rspec_api_documentation', '~> 4.9.0'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'shoulda-callback-matchers', '~> 1.1.1'
  gem 'factory_bot_rails','~> 4.11.1'
  gem 'rails-controller-testing', '~> 1.0.2' 
  gem 'rubocop', require: false
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'annotate'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rails-erd'
end

group :test do
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'faker'
  gem 'rspec-rails'
  gem 'simplecov', require: false
  gem 'rack-test'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
