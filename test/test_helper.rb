ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"
unless ENV['NO_COVERAGE']
  # Generate HTML and JSON reports
  SimpleCov.formatters = SimpleCov::Formatter::MultiFormatter.new([
    SimpleCov::Formatter::HTMLFormatter,
    SimpleCov::Formatter::JSONFormatter
  ])
  SimpleCov.start 'rails' do
    ` mkdir -p ./coverage/ `
  end
end

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
