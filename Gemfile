source 'https://rubygems.org'

gem 'rails', '4.2.7.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 2.7.2'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

group :deployment do
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-passenger'
  gem 'dlss-capistrano'
end

# Access an IRB console on exception pages or by using <%= console %> in views
gem 'web-console', '< 3.3.1', group: :development

group :development, :test do
  gem 'solr_wrapper'
  gem 'sqlite3'
  gem 'byebug'
  gem 'database_cleaner'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'coveralls',     require: false
  gem 'rubocop',       require: false
  gem 'rubocop-rspec', require: false
end

group :production do
  gem 'mysql2', '~> 0.3.20'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', platforms: :ruby
  gem 'newrelic_rpm'
end

gem 'squash_ruby', require: 'squash/ruby'
gem 'squash_rails', require: 'squash/rails'

gem 'config'

gem 'bootstrap-sass', '~> 3.3.5'

gem 'blacklight', '~> 6.3'
gem 'blacklight-gallery', '~> 0.3'
gem 'blacklight_heatmaps'
gem 'blacklight-spotlight', '~> 0.25'
gem 'rsolr'
gem 'devise'
gem 'devise-guests', '~> 0.3'
gem 'devise-remote-user'
gem 'devise_invitable'
gem 'rack-dev-mark'
gem 'turnout'
gem 'whenever'
gem 'ruby-oembed'
gem 'is_it_working-cbeer'
gem 'friendly_id'
gem 'sitemap_generator'
gem 'delayed_job'
gem 'delayed_job_active_record'
gem 'capistrano3-delayed-job'
gem 'sul_styles'
gem 'dotenv'
gem 'sir_trevor_rails'
gem 'spotlight-resources-iiif'
gem 'riiif', '~> 0.4.0'
