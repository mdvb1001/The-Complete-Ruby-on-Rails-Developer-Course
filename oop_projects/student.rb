require_relative '../crud'

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password
  
  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end
  # # Setter
  # def first_name=(name)
  #   @first_name = name
  # end

  # # Getter
  # def first_name
  #   @first_name
  # end
  
  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, Email address: #{@email}"
  end
  
end

max = Student.new("Max", "Van Bel", "mdvb1", "max.vanbel@example.com", "password11")
john = Student.new("John", "Doe", "jd1011", "johndoe@example.com", "password12")

hashed_password = max.create_hash_digest(max.password)
max.password = hashed_password
puts max.password

puts hashed_password