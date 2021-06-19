# README

This is a messaging application build on ruby on rails.

# Requeirments
  * Ruby => 2.7.2
  * Ruby on Rails => 5.2 
  * Postgresql
# Other technologies implimented
  * javascript/jquery
  * Css
  * Bootstrap

# Setup
  * Checkout the application
  * Run rails db:setup
  * Run bundle install 
  * Run rails s

# Database Structure
  * users (id, name, email, password, address, created_at)
  * messages (id, title, is_read, sender_id, receiver_id, created_at)
