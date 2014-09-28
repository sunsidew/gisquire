OmniAuth.config.logger = Rails.logger

# token regenerated (this is invalid token)
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, "663435676220-jg0p5lpbpo183rqsn4nnb4hl0ajr0efo.apps.googleusercontent.com", "4wvFGtlGCp_dyeK1ncX6DbAz"
end