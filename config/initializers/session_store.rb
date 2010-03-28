# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pucker-web_session',
  :secret      => '049ae1733d3f74eaaeaee509f186c971efe042adeaf4cae039f1b08ec198ef0c82effbed67f69b6d85d46ad2b0c6dcc674358b8cc11cc08f23034706d9adef80'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
