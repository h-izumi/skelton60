source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'dotenv-rails', require: 'dotenv/rails-now'
gem 'config'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '6.0.0.rc1'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.4.4'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use Haml
gem 'hamlit-rails'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Bootstrap
gem 'bootstrap', '~> 4.3.1'
gem 'bootstrap_form', '>= 4.2.0'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '>= 4.0.0.rc.3'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

gem 'activerecord-session_store'

gem 'whenever', require: false

gem 'rack-dev-mark'
gem 'rack-mini-profiler'
gem 'memory_profiler'
gem 'flamegraph'
gem 'stackprof'

gem 'pry-rails'
gem 'pry-coolline'
gem 'pry-doc'
gem 'awesome_print'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-byebug'

  gem 'better_errors'
  gem 'binding_of_caller'

  gem 'rspec-rails', '~> 3.8'
  gem 'factory_bot_rails'

  gem 'brakeman'
  gem 'rails_best_practices'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'spring-commands-rspec'

  # Current released version does not support rails 6.
  gem 'annotate', github: 'h-izumi/annotate_models', ref: 'b249e8a'
end

group :test do
  gem 'database_rewinder'
  gem 'simplecov', require: false
end

# Use Capistrano for deployment
group :development do
  gem 'capistrano', '~> 3.11', require: false
  gem 'capistrano-rails', '~> 1.4', require: false
  gem 'capistrano-passenger'
  # gem 'capistrano-git-copy', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
