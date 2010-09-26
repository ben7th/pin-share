# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pin-share_session',
  :secret      => '641ca79a002695f6ee21640f5bf3f68a52eeed8c020260e97985c87b0678ba28dbb8f376314799a93b3f253ac373e6d3f9c8324a9670634801383da42b4adeb5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
