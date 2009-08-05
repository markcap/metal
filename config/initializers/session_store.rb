# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_metal_session',
  :secret      => 'a2c393c174c9ade960202a50322dca254ab9eb3f4fed9840b784a4e2e31de1362b7ca09ef2226dc4c67845ffa4489ef23132a03189939157e83b95944baff36e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
