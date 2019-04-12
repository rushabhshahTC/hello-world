require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TeeBook
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      address: 'smtp.gmail.com',
      port: 587,
      domain: 'gmail.com',
      user_name: 'rushabh@yopmail.com',
      password: '',
      authentication: 'plain',
      enable_starttls_auto: true }

    # config.action_mailer.delivery_method = :smtp
    # config.action_mailer.smtp_settings = {
    # address: "smtp.gmail.com",
    # enable_starttls_auto: true,
    # port: 587,
    # authentication: :plain,
    # user_name: 'krishashah1682@gmail.com',
    # password: '9601700@Kjsa',
    # openssl_verify_mode: 'none',
    # domain: 'gmail.com'
    # }
    

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
