source 'https://rubygems.org'

ruby '2.2.0'

gem 'rails', '4.2.0'

## Libraries
####################

gem 'thin' # Use Thin as Server
gem 'devise' # User Authentication
gem 'message_rocket' # WebSocket Service

group :development, :test do
  gem 'sqlite3' # SQLite3 DB
  gem 'spring' # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'figaro' # Manage api keys
end

group :development do
  gem 'better_errors' # Better Errors
  gem 'binding_of_caller' # Better Debugging
  gem 'awesome_print'
  gem 'byebug'
end

group :production do
  gem 'pg' # Postgresql DB
  gem 'rails_12factor' # Heroku asset handler
end

## Views
####################

gem 'sass-rails' # Use SCSS for stylesheets
gem 'bootstrap-sass' # Pull our selves up by our Bootstraps
gem 'slim-rails' # Lose some weight

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby
gem 'jquery-rails' # jQuery
gem 'turbolinks' # AJAXED Page Gets
gem 'jbuilder' # JSON APIs with ease
gem 'tzinfo-data', platforms: [:mingw, :mswin] # Rails Core Windows Dependency, Provides Time Zone Info

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
