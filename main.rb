# Yes or no
# if Y which city?
# if match city, give area code
# loops back asking for city

dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(somehash)
# Write code here
  somehash.keys
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
# Write code here
  somehash[key]
end
 
# Execution flow
loop do
# Write your program execution code here
  puts "Do you want to lookup an area code based on a city name? (Y/N)"
  answer = gets.chomp.downcase
  if answer != "y"
    puts "If you got this far! send me an E-mail at seifriedbrett@gmail.com!"
    break
  else
    puts get_city_names(dial_book)
    puts "Which area code would you like to see?"
    city_input = gets.chomp.downcase
    if dial_book.include?(city_input)
      puts "The area code for #{city_input} is #{get_area_code(dial_book, city_input)}"
    else
      puts "That city is not in our dictionary"
    end
  end
end