require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module R0z
  def self.config
    Application.config
  end
  class Application < Rails::Application
    if File.exist?("#{Rails.root}/config/config.yaml")
      YAML.load_file("#{Rails.root}/config/config.yaml").each { |k,v| config.send "#{k}=", v }
    else
      FileUtils.cp("#{Rails.root}/config/config.yaml.example", "#{Rails.root}/config/config.yaml")
    end

    config.assets.precompile += %w( api.js )
    config.assets.precompile += %w( info.js )
    config.assets.precompile += %w( main.js )
    config.assets.precompile += %w( source.js )
    config.assets.precompile += %w( upload.js )

    config.assets.precompile += %w( api.css )
    config.assets.precompile += %w( info.css )
    config.assets.precompile += %w( main.css )
    config.assets.precompile += %w( source.css )
    config.assets.precompile += %w( upload.css )
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
  end
end
