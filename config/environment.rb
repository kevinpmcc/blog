# Load the Rails application.
require_relative 'application'

Rails.application.configure do
  config.action_controller.perform_caching = true
  config.cache_store = :memory_store, { size: 64.megabytes }
end
# Initialize the Rails application.
Rails.application.initialize!
