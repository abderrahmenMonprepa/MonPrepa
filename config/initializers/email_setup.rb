# ActionMailer::Base.delivery_method = :smtp
# ActionMailer::Base.smtp_settings = {
#   address:              'smtp.sendgrid.net',
#   port:                 587,  # 465 for ssl connections
#   domain:               '37.187.29.92',
#   user_name:            Rails.application.secrets.sendgrid_username,
#   password:             Rails.application.secrets.sendgrid_password,
#   authentication:       'plain',
#   enable_starttls_auto: true 
# }