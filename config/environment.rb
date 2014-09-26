# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ENV['OCTOKIT_TOKEN'] ||= "bffcbde1c5a883e4d1468105f67ef70fc9b94953"
ENV['OCTOKIT_TARGET_REPO'] ||= "sunsidew/gisquire"

ENV['GOOGLE_CLIENT_ID'] ||= "663435676220-23rvnhugqp6ft2i2pnfjpr6k5af0sco8.apps.googleusercontent.com"
ENV['GOOGLE_CLIENT_SECRET'] ||= "QtAvIWVSkHZOmqFT8L8obIxu"