require_relative 'crud'

users = [
  { username: "Max", password: "password1" },
  { username: "Maxi", password: "password2" },
  { username: "Maxim", password: "password3" },
  { username: "Maxime", password: "password4" },
]

hashed_users = Crud.create_secure_users(users)

puts hashed_users