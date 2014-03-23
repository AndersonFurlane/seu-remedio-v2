require 'spork'

Spork.prefork do
  ENV["RAILS_ENV"] ||= 'test'
  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec'
  require 'database_cleaner'
  require 'ffaker'
  require 'rubygems'
  require 'bundler/setup'
  Bundler.require
  require 'active_record'
  require 'factory_girl_rails'

  Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }
  ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

  RSpec.configure do |config|
    config.mock_with :rspec
    config.include FactoryGirl::Syntax::Methods
    Capybara.raise_server_errors = false
    Capybara.javascript_driver = :webkit
    config.include Capybara::DSL
    config.fail_fast = true

    config.before(:suite) do
      DatabaseCleaner.strategy = :truncation
      DatabaseCleaner.clean_with(:truncation)
      #FactoryGirl.find_definitions
    end

    config.after(:all) do
      DatabaseCleaner.start
      DatabaseCleaner.clean
    end
  end
end