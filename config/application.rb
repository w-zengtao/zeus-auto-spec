require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module ZeusAutoSpec
  class Application < Rails::Application
    config.load_defaults 6.0
    config.autoload_paths += Dir["#{Rails.root}/app/services"]
  end
end
