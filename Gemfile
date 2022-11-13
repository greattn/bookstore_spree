source "https://rubygems.org"
git_source(:github){|repo| "https://github.com/#{repo}.git"}

ruby "2.7.0"

gem "active_storage_validations"
gem "bcrypt", "3.1.13"
gem "bootsnap", ">= 1.4.4", require: false
gem "bootstrap-sass", "3.4.1"
gem "cancancan"
gem "cocoon"
gem "config"
gem "devise"
gem "faker", "2.1.2"
gem "figaro"
gem "font-awesome-rails"
gem "i18n-js"
gem "image_processing", "1.9.3"
gem "jbuilder", "~> 2.7"
gem "jquery-rails"
gem "jwt"
gem "mini_magick", "4.9.5"
gem "mysql2", "~> 0.5"
gem "pagy"
gem "puma", "~> 5.0"
gem "rails", "~> 6.1.4", ">= 6.1.4.4"
gem "rails-i18n"
gem "ransack"
gem "sass-rails", ">= 6"
gem "simplecov"
gem "simplecov-rcov"

# spree
gem "spree" # core and API
gem "spree_backend" # Rails admin panel (optional)
gem "spree_emails" # transactional emails (optional)
gem "spree_sample" # dummy data like products, taxons, etc
gem "spree_auth_devise", "~> 4.3" # Devise integration (optional)
gem "spree_gateway", "~> 3.9" # payment gateways eg. Stripe, Braintree (optional)
gem "spree_i18n", "~> 5.0" # translation files (optional)

gem "toastr-rails"
# gem "turbolinks", "~> 5"
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem "webpacker", "~> 5.0"

group :development, :test do
  gem "database_cleaner"
  gem "factory_bot_rails"
  gem "pry", "~>0.14.0"
  gem "rails-controller-testing"
  gem "rspec-rails", "~> 4.0.1"
  gem "rubocop", "~> 0.74.0", require: false
  gem "rubocop-checkstyle_formatter", require: false
  gem "rubocop-rails", "~> 2.3.2", require: false
  gem "shoulda-matchers"
end

group :development do
  gem "listen", "~> 3.3"
  gem "rack-mini-profiler", "~> 2.0"
  gem "spring"
  gem "web-console", ">= 4.1.0"
end

group :test do
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver"
  gem "webdrivers"
end
