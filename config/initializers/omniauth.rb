OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
 provider :facebook, '171866636845601',
 'd62bc6aa2abe9ea5c9af5f91c96fff48', scope: 'public_profile', info_fields: 'id,name,link'
end