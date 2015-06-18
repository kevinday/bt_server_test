# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
BraintreeTestRails::Application.initialize!

#Initialize braintree stuff.
Braintree::Configuration.environment = :sandbox
Braintree::Configuration.merchant_id = ENV["BT_MERCH_ID"]
Braintree::Configuration.public_key = ENV["BT_PUB_KEY"]
Braintree::Configuration.private_key = ENV["BT_PRIV_KEY"]
