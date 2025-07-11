# frozen_string_literal: true

# Configure Rails Environment
ENV['RAILS_ENV'] = 'test'

require 'simplecov'
SimpleCov.command_name 'specs'

require 'logger'
require 'rails'
require File.expand_path('dummy/config/environment.rb', __dir__)

require 'rspec/rails'
require 'bundler/setup'
require 'conversejs'

# Load all support helpers and shared examples
Dir[File.join(__dir__, 'support', '**', '*.rb')].each { |f| require f }

# Load fixtures from the engine
if ActiveSupport::TestCase.method_defined?(:fixture_path=)
  ActiveSupport::TestCase.fixture_path =
    File.expand_path('fixtures', __dir__)
end

Rails.backtrace_cleaner.remove_silencers!

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  # Enable the focus inclusion filter and run all when no filter is set
  # See: http://bit.ly/2TVkcIh
  config.filter_run(focus: true)
  config.run_all_when_everything_filtered = true
end
