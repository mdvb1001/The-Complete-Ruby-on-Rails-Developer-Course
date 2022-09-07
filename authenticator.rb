users = [
  { username: "Max", password: "password1" },
  { username: "Maxi", password: "password2" },
  { username: "Maxim", password: "password3" },
  { username: "Maxime", password: "password4" },
]

def auth_user(username, password, list_of_users) 
  list_of_users.each do |user|
    if user[:username] == username && user[:password] == password
      return user
    end
  end
  "Nope! Wrong!"
end


puts "Welcome to the authenticator"
25.times { print "_" }
puts 
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get a vack the user object"

# users.each do |user|
#   if user[:username] === username
#     print "you did it"
#     break
#   else
#     print "nope"
#   end
# end

attempts = 1

while attempts < 4 
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication
  puts "Press n to quit or any other key to continue"
  input = gets.chomp 
  break if input == "n"
  attempts += 1
end
puts "You have exceeded the number of attemtps" if attempts == 4