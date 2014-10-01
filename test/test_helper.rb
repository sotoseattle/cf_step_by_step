# ENV['RAILS_ENV'] ||= 'test'
Rails.env = 'test'    # This is the same as above (fjs6)
puts "Current environment: #{Rails.env}"

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/rails/capybara'
require 'capybara/poltergeist'
require 'pry-rescue/minitest'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  Capybara.javascript_driver = :poltergeist
end
