# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Scheduler::Application.config.secret_key_base = '3aedcbb4667663175c42f33b1bc718bdf2bbb79e16730d40e218b2c25bf16581e0ab1ebad4782aa906d252013ea6b21baeef22c8552f61436a5de26865e09e1a'
