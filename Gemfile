source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.0'

gem 'batch-loader'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'graphql'
gem 'jbuilder', '~> 2.7'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.4.1'
gem 'sass-rails', '~> 5'
gem 'sqlite3', '~> 1.4'
gem 'turbolinks', '~> 5'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'webpacker', '~> 4.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'annotate', git: 'git@github.com:ctran/annotate_models.git', branch: 'develop'
  gem 'bullet'
  gem 'faker'
  gem 'graphiql-rails'
  gem 'lerolero_generator'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubycop'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
