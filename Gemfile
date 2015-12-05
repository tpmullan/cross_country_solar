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
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
 
gem 'gmaps4rails'
gem 'underscore-rails'

gem 'geocoder'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'pry-byebug'
  gem 'pry'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Production deployment
  gem 'capistrano', '~> 3.4'
  gem 'capistrano-bundler', '~> 1.1.4'
  gem 'capistrano-rails', '~> 1.1.3'
  gem 'capistrano-secrets-yml', '~> 1.0.0'
  gem 'capistrano-rails-console'
  gem 'capistrano-rails-tail-log'
  # Add this if you're using rbenv
  # gem 'capistrano-rbenv', github: 'capistrano/rbenv'
  # Add this if you're using rvm
  gem 'capistrano-rvm', github: 'capistrano/rvm'

  gem "airbrussh", :require => false

  # database visualization
  gem 'rails-erd' 
  
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
  #database
  gem 'pg', '~> 0.18.3'
  
  #heroku required gems
  # gem 'rails_12factor', '0.0.3'
  
end


