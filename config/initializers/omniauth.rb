OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1189792231119867', '44e96e7a5834b501d855a245c86f2f0d'
end