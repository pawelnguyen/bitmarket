require 'spork'

Spork.prefork do
  ENV["RAILS_ENV"] ||= 'test'

  require "rails/application"
  Spork.trap_method(Rails::Application::RoutesReloader, :reload!)
  Spork.trap_method(Rails::Application, :eager_load!)
  require File.expand_path("../../config/environment", __FILE__)
  Rails.application.railties.all { |r| r.eager_load! }

  require File.expand_path("../../config/environment", __FILE__)

  require 'rspec/rails'
  require 'capybara/rspec'

  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

  Capybara.javascript_driver = :webkit

  DatabaseCleaner.strategy = :truncation

  RSpec.configure do |config|
    config.include Devise::TestHelpers, :type => :controller

    config.infer_base_class_for_anonymous_controllers = false
    config.order = "random"

    config.include Capybara::DSL
  end

end

Spork.each_run do
  DatabaseCleaner.clean
end
