# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# token regenerated (this is invalid token)
ENV['OCTOKIT_TOKEN'] ||= "bffcbde1c5a883e4d1468105f67ef70fc9b94953"
ENV['OCTOKIT_TARGET_REPO'] ||= "sunsidew/privateissuetest"
