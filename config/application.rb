require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module WebCrawlerTags
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # config.autoload_paths << Rails.root.join('lib')
    # config.autoload_paths << Rails.root.join('app/models')
    #
    config.autoload_paths += Dir["#{config.root}/lib", "#{config.root}/lib/**/"]
    # config.autoload_paths += Dir["#{Rails.root}/app/models/**/"]
    # config.autoload_paths += Dir["#{config.root}/lib"]
    # config.autoload_paths += %W(#{config.root}/lib)


  end
end
