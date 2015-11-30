source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

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
  gem 'therubyracer'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

gem 'spree', github: 'spree/spree', branch: '3-0-stable'
gem 'spree_gateway', github: 'spree/spree_gateway', branch: '3-0-stable' # stripe included (details here www.stripe.com and in readme)
gem 'spree_auth_devise', github: 'spree/spree_auth_devise', branch: '3-0-stable'

# connecting a custom shop to the ShipStation
gem 'spree_shipstation', github: 'KosenkoDmitriy/spree_shipstation', branch: '3-0-stable'

# ALCHEMY
gem 'alchemy_spree', github: 'magiclabs/alchemy_spree', branch: 'master' # '~> 1.0.0.beta' and alchemy_cms '~> 3.1'

gem 'spree_minicart', github: 'KosenkoDmitriy/spree_minicart', branch: '3-0-stable'
gem 'spree_active_shipping', github: 'spree/spree_active_shipping', branch: '3-0-stable'
gem 'spree_asset_variant_options', github: 'KosenkoDmitriy/spree_asset_variant_options', branch: '3-0-stable'
gem 'spree_affiliate', github: 'KosenkoDmitriy/spree_affiliate', branch: '3-0-stable'
gem 'spree_chimpy', github: 'KosenkoDmitriy/spree_chimpy', branch: '3-0-stable'
