# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
	  token_file = Rails.root.join('.secret')
	    if File.exist?(token_file)
			     Use the existing token.
			     File.read(token_file).chomp
			       else
			            Generate a new token and store it in token_file.
			               token = SecureRandom.hex(64)
			                   File.write(token_file, token)
			                       token
			                         end
			                         end
Sample3App::Application.config.secret_key_base = '364ec4aae79b5e003a746cb1d2e61a8a6a8ff070b35a20d24ecc9ac87cdc108c5b843071d231ea8c4392a8685c3cc8f89ac52b17187f64efbdf14ef02c8a05c7'
