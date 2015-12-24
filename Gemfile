source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'susy', '~> 1.0.9'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Could not find a JavaScript runtime. See https://github.com/sstephenson/execjs for a list of available runtimes. (ExecJS::RuntimeUnavailable)
gem 'therubyracer', '~> 0.12.2'
gem 'execjs' # , '~> 2.2.1'

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'jquery-cookie-rails', '~> 1.3.1.1'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
gem 'haml-rails', '~> 0.5.3'

gem 'delayed_job_active_record', '~> 4.0.1'

gem 'newrelic_rpm', '~> 3.9.0.229'

gem 'polyglot', '~> 0.3.5'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# gem 'spree', github: 'KosenkoDmitriy/spree', branch: '3-0-stable'
gem 'spree', path: '../spree' # local repo
gem 'spree_gateway', github: 'spree/spree_gateway', branch: '3-0-stable' # stripe included (details here www.stripe.com and in readme)
gem 'spree_auth_devise', github: 'spree/spree_auth_devise', branch: '3-0-stable'
# TODO: upgrade from spree 2.2.x to 3.0.x
# gem 'spree_advanced_reporting', :git => 'https://github.com/mobispoke/spree_advanced_reporting', :branch => 'master' # 2.2.0.0

gem 'alchemy_spree', github: 'KosenkoDmitriy/alchemy_spree' # , branch: '3-0-v1' # '~> 1.0.0.beta' and alchemy_cms '~> 3.1'

# connecting a custom shop to the ShipStation
gem 'spree_shipstation', github: 'KosenkoDmitriy/spree_shipstation', branch: '3-0-stable'
# TODO: disabled because it incompatible with alchemy so far
# gem 'spree_minicart', github: 'KosenkoDmitriy/spree_minicart', branch: '3-0-stable'
gem 'spree_active_shipping', github: 'spree/spree_active_shipping', branch: '3-0-stable'
gem 'spree_asset_variant_options', github: 'KosenkoDmitriy/spree_asset_variant_options', branch: '3-0-stable'
gem 'spree_affiliate', github: 'KosenkoDmitriy/spree_affiliate', branch: '3-0-stable'
gem 'spree_chimpy', github: 'KosenkoDmitriy/spree_chimpy', branch: '3-0-stable'
gem 'spree_store_credits', github: 'KosenkoDmitriy/spree_store_credits', branch: '3-0-stable'
gem 'spree_address_book', github: 'KosenkoDmitriy/spree_address_book', branch: '3-0-stable'

gem 'bourbon'
gem 'neat'

# to fix assume_from_symbol issue for Money::Class
gem 'money', '6.6.1' # , '6.0.1'

# For S3 Storage
gem 'dragonfly-s3_data_store', '~> 1.0.4' # alchemy
gem 'aws-sdk', '~> 1.27.0' # spree
gem 'asset_sync', '~> 1.1.0'

gem 'mobile-fu', '~> 1.3.1' # automatically detect mobile requests from mobile devices

gem 'google-tag-manager-rails', '~> 0.1.3'

# mailers
gem 'mandrill-api', '~> 1.0.9'
gem 'mandrill_mailer', '~> 0.4.6'
gem 'mailchimp-api', '~> 2.0.4'
gem 'gibbon', '~> 1.1.5'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '~> 0.4.0', require: false
end

group :development, :staging do
  gem 'better_errors', '~> 1.1.0'
end

# Use Unicorn as the app server
# gem 'unicorn'

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  gem 'rubocop', require: false
  gem 'pronto'
  gem 'pronto-rubocop', require: false
  gem 'pronto-brakeman', require: false
  gem 'pronto-rails_schema', require: false
  gem 'pronto-jshint', require: false

  # Required for JShint
  # gem 'therubyracer'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Use Capistrano for deployment
  # gem 'capistrano-rails', group: :development
  gem 'capistrano', '~> 3.2.0'
  gem 'capistrano-rvm'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'binding_of_caller'
end

group :development, :test do
  gem 'dotenv-rails', '< 2.0'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug' # comment when ruby <= 1.9.3-p551
  gem 'awesome_print'
  gem 'pry-byebug' # comment when ruby <= 1.9.3-p551
  gem 'rspec-rails', '~> 3.2'
  gem 'factory_girl_rails'
end

group :test do
  gem 'ffaker'
  gem 'capybara'
  gem 'launchy'
  gem 'poltergeist'
  gem 'database_cleaner'
end
