require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module DislikeIt
  class Application < Rails::Application
    config.time_zone = 'Eastern Time (US & Canada)'
    config.active_record.default_timezone = :local

    # asset precompile setting for Heroku
    config.assets.initialize_on_precompile = false

    # get sass to compile my files in vendor
    config.sass.load_paths << File.expand_path('../../vendor/assets/stylesheets/')

  end
end
