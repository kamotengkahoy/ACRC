# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_acrc_session',
  :secret      => '324a08af697bd1ee2ef8c8bf707c72a5f16b4b27939c36a654fb1e8ae25fa628bce910ce87eaed1812ef651a275fa172f83312516353928f7e6aa023de3b3bf1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
