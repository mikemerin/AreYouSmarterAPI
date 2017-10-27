require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
# require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AreyousmarterAPI
  class Application < Rails::Application
    config.load_defaults 5.1

    config.api_only = true
    # Rails.application.config.middleware.insert_before 0, Rack::Cors do
    #   allow do
    #     # note: will change origins to the HTML once published (security risk with :post controllers)
    #     origins '*'
    #     resource '*',
    #       headers: '*',
    #       methods: [:get, :post, :put, :patch, :delete, :options, :head]
    #   end
    # end
  end
end
