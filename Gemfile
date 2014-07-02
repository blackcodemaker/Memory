source "https://rubygems.org"
source "https://rails-assets.org"

ruby "2.1.1"
gem "rails", "4.0.5"

gem "pg", "~> 0.17.1"
gem "sass-rails", "~> 4.0.3"
gem "uglifier", "~> 2.5.0"
gem "coffee-rails", "~> 4.0.1"
gem "jquery-rails", "~> 3.1.0"
gem 'bootstrap' 
# gem "jquery-ui-rails", "~> 4.2.1"
# gem "foundation-rails", "~> 5.2.2.0"
# gem "high_voltage", "~> 2.1.0"
gem "devise", "~> 3.2.4"
# gem "devise_invitable", "~> 1.3.5"
# gem "simple_enum", github: "lwe/simple_enum", tag: "v2.0.0.rc2"
gem "compass-rails", "~> 1.1.7"
# gem "table_cloth", "~> 0.4.1"
gem "active_attr", "~> 0.8.3"
# gem "pundit", "~> 0.2.3"
# gem "state_machine", "~> 1.2.0"
# gem "state_machine-audit_trail", "~> 0.1.8"
# gem "bitmask_attributes", "~> 1.0.0"
# gem "rails_config", "~> 0.4.2"
# gem "stripe", "~> 1.12.0"
# gem "carmen", "~> 1.0.1"
# gem "premailer", "~> 1.8.2"
# gem "premailer-rails"
# gem "nokogiri", "~> 1.6.2.1"
# gem "timecop", "~> 0.7.1"
# gem "handlebars_assets", "~> 0.16"
# gem "wicked_pdf", "~> 0.10.2"
# gem "wkhtmltopdf-binary", "~> 0.9.9.1"
gem "sidekiq", "~> 3.1.3"
# gem "sinatra", ">= 1.3.0", :require => nil
# gem "fog", "~> 1.22.1"
# gem "carrierwave", "~> 0.10.0"
gem "chronic", "~> 0.10.2"
# gem "smarter_csv", "~> 1.0.17"
# gem "valid_email", "~> 0.0.5"

# gem "rails-assets-underscore", "~> 1.6.0"
# gem "rails-assets-backbone", "~> 1.1.2"
gem "figaro"

group :development do
  gem "quiet_assets", "~> 1.0.2"
  # gem "metric_fu", "~> 4.11.0"
  # gem "rails-erd", "~> 1.1.0"
  #gem "stairs", "~> 0.7.1"
  gem "bullet", "~> 4.9.0"
end

group :test do
  # gem "simplecov", "~> 0.8.2", require: false
  # gem "simplecov-rcov-text", "~> 0.0.3", require: false
  # gem "codeclimate-test-reporter", "~> 0.3.0", require: false
  gem "shoulda-matchers", "~> 2.6.1", require: false
  # gem "turnip", "~> 1.2.1"
  # gem "capybara", "~> 2.1.0"
  # gem "poltergeist", "~> 1.5.1"
  # gem "selenium-webdriver", "~> 2.42.0"
  # gem "launchy", "~> 2.4.2"
  # gem "database_cleaner", "~> 1.3.0"
  # gem "webmock", "~> 1.18.0"
  # gem "vcr", "~> 2.9.2"
end

group :development, :test do
  gem "spring-commands-rspec", "~> 1.0.2"
  gem "guard-rspec", "~> 4.2.8", require: false
  gem "debugger", "~> 1.6.6"
  gem "pry", "~> 0.9.12.6"
  gem "pry-rails", "~> 0.3.2"
  gem "pry-debugger", "~> 0.2.2"
  gem "rspec-rails"
  gem "factory_girl_rails", "~> 4.4.1"
  # gem "rubocop", "~> 0.21.0"
  gem "dotenv-rails", "~> 0.11.1"
  gem "better_errors", "~> 1.1.0"
  gem "binding_of_caller", "~> 0.7.2"
end

group :staging, :production do
  gem "thin", "~> 1.6.2"
end
