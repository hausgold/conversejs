# frozen_string_literal: true

require 'zeitwerk'

# The root namespace of the conversjs gem.
module Conversejs
  # Setup a Zeitwerk autoloader instance and configure it
  loader = Zeitwerk::Loader.for_gem

  # Finish the auto loader configuration
  loader.setup

  # Make sure to eager load all constants
  loader.eager_load
end
