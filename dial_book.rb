dial_book = {
  'newyork' => '212',
  'newbrunswick' => '732',
  'edison' => '908',
  'plainsboro' => '609',
  'sanfrancisco' => '301',
  'miami' => '305',
  'paloalto' => '650',
  'evanston' => '847',
  'orlando' => '407',
  'lancaster' => '717'
}

# Get city names from the hash
def get_city_names(somehash)
  # Write code here
  somehash.keys
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
  # Write code herey
  somehash[key]
end

# Execution flow
loop do
  # Write your program execution code here
  puts 'Do you want to look up an area code based on a city name? (Y/N)'
  answer = gets.chomp.downcase
  if answer == 'y'
    puts get_city_names(dial_book)
    puts "Which city's area code would you like to know?"
    input = gets.chomp.downcase
    if dial_book.include?(input)
      puts "The area code for the #{input} is... #{get_area_code(dial_book, input)}"
    else
      puts 'You entered an invalid city name'
    end
  else
    break
  end
end
