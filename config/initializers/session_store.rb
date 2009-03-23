# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_zebra_session',
  :secret      => 'a08eb506ea0555e4ca7eca3ddcad2f3ef3654a79c4cedc569a8a2372539e8ec34375eb3c98b31529048adc7da474dc7181fa4ed23bdcde5f6786181fabb7d356'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
