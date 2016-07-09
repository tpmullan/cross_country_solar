source 'https://rubygems.org'
#source 'https://nexus.kdc.capitalone.com/mother/content/repositories/rubygems.org/'
ruby '2.2.4'

gem 'rails', '4.2.4'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'therubyracer', platforms: :ruby

gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
 
gem 'gmaps4rails'
gem 'underscore-rails'
gem 'simple_form'
gem 'will_paginate', '~> 3.0.6'
gem 'will_paginate-bootstrap'
gem 'geocoder'
gem 'devise'

#font/style
gem 'font-awesome-rails'
gem 'bootstrap-sass'
gem 'pg', '~> 0.18.3'

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
  #heroku required gems
  gem 'rails_12factor', '0.0.3'
  
end


