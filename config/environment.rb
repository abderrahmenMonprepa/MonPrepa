# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'amasmoudi90',
  :password => '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',
  :domain => '37.187.29.92',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
