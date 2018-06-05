require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MonPrepa
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    # config.force_ssl = true

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # Warden::Manager.after_authentication do |user, auth, opts|
    #   #auth.cookies - to access cookie
    #   token = Devise.friendly_token
    #   user.update_attribute :login_token, token
    #   #session
    #   auth.env['rack.session'][:sign_in_token] = token
    # end
   
    # Warden::Manager.before_logout do |user, auth, opts|
    #   auth.env['rack.session'].delete :sign_in_token
    # end
    
  end
end
