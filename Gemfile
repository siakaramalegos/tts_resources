source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
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

# This gem allows us to pull in Bootswatch themes
# gem 'starter_generators'

# gem 'bootstrap-sass', '~>3.3.3'

gem 'thin'
gem 'devise'
gem 'activeadmin', github: 'activeadmin'
gem 'font-awesome-rails'
gem 'acts_as_votable', '~> 0.10.0'
gem 'awesome_print'

group :development, :test do
  gem 'sqlite3'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # add Pry for debugging information
  gem 'pry'
  gem 'pry-rails'

  # Annotate models
  gem 'annotate'

  # Populate false sample data
  gem 'populator'
  gem 'faker'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  gem 'better_errors'
  gem 'quiet_assets'
  gem 'letter_opener'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
