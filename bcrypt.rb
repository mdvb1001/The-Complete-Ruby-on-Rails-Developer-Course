require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

require 'bcrypt'

my_password = BCrypt::Password.create("my password")

puts my_password = BCrypt::Password.new("$2a$12$XBgMqr04BRAVWt3LoZeCDuUj.HETEpEKjJoTN8nW5QAmeHxw866.6")
puts my_password == "my password"     #=> true
puts my_password == "not my password" #=> false