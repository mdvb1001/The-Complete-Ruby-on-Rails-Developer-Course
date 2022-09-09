require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

require 'bcrypt'

users = [
  { username: "Max", password: "password1" },
  { username: "Maxi", password: "password2" },
  { username: "Maxim", password: "password3" },
  { username: "Maxime", password: "password4" },
]

def create_hash_digest(password) 
  BCrypt::Password.create(password)
end

def verify_hash_digest(password)
  BCrypt::Password.new(password)
end

def create_secure_users(list_of_users)
  list_of_users.each do |user_record|
    user_record[:password] = create_hash_digest(user_record[:password])
  end
  list_of_users
end

new_users = create_secure_users(users)
puts new_users

def authenticate_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
      return "Nice... #{user_record}"
    end
  end
  "Credentials were not correct"
end

p authenticate_user("Maxime", "password4", new_users)