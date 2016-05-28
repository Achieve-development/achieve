source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'

# Use postgresql as the database for Active Record
gem 'pg'
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
gem 'bcrypt', '~> 3.1.7'

#ログイン機能実装
gem 'devise'

gem 'rails_12factor', group: :production

gem 'therubyracer', platforms: :ruby

#bootstrap
gem 'bootstrap-sass', '~> 3.2.0' 

gem 'autoprefixer-rails'

#AWSのS3を使用するためのGem
gem 'fog' 

gem 'pry-rails'

gem 'faker'
# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

#認証
gem 'omniauth' 
#Twitter認証
gem 'omniauth-twitter'
#Facebook認証
gem 'omniauth-facebook'


#画像アップローダー
gem 'carrierwave'
#Bootstrap
gem 'bootstrap-social-rails'
#リサイズできるようにする
gem 'rmagick'

#Rspec
gem 'rspec-rails'
#
gem 'capybara'

gem 'rambulance'



group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'dotenv'
  
  gem 'awesome_print' 
  gem 'better_errors'
  gem 'binding_of_caller' 
  gem 'database_rewinder'
  gem 'factory_girl_rails' 
  gem 'hirb-unicode' 
  gem 'hirb' 
  gem 'pry-byebug' 
  gem 'pry-doc'
  gem 'pry'
  gem 'pry-remote'
  gem 'pry-nav'
  gem 'pry-stack_explorer' 
  gem 'quiet_assets' 
  gem 'tapp'
  gem "annotate", github: "ctran/annotate_models" 
  gem "colorize_unpermitted_parameters" 
  gem "guard-rspec", require: false 
  gem "rack-mini-profiler"
  gem "spring-commands-rspec" 
  gem "xray-rails"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  
   gem 'rubocop', require: false

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end