source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'


group :development, :test do
 gem 'byebug'
 gem 'rspec-rails', '~> 3.0'
 gem 'capybara'
 gem 'database_cleaner'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

#image upload
gem 'carrierwave', '~> 1.0'
gem 'mini_magick', '~> 4.6'
gem 'fog', '~> 1.38'
gem 'figaro', '~> 1.1', '>= 1.1.1'
gem 'unf', '~> 0.1.4'
gem 'image_magick', '~> 0.1.9'

#user authentication
gem 'devise', '~> 4.2'


