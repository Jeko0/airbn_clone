source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.3"
gem "bootsnap", require: false
gem "devise"
gem "geocoder"
gem "image_processing", ">= 1.2"
gem "importmap-rails"
gem "jbuilder"
gem "jsonapi-serializer"
gem "money-rails", "~>1.12"
gem "ordinare", "~> 0.4.0"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.3", ">= 7.0.3.1"
gem "redis", "~> 4.0"
gem "sass-rails", "~> 6.0"
gem "sprockets-rails"
gem "stimulus-rails" 
gem "tailwindcss-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "factory_bot_rails"
  #gem "pry-rails"
  gem "faker", git:  "https://github.com/faker-ruby/faker.git", branch: "main"
  gem "rspec-rails", "~> 5.1", ">= 5.1.2"
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "shoulda-matchers", "~> 5.0"
  gem "webdrivers"
end
