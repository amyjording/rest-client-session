require 'rest-client'

puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".center(70)
puts "    Rest Client Search Service    ".center(70)
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".center(70)
puts
printf "What would you like to search? : "
input = gets.chomp

# formating the search query so it matches the parameters for google
input = input.split(" ")
input = input.join("+")

# setting the output variable to be equal to the result of the google url with the input parameters included.
output = RestClient.get "http://www.duckduckgo.com/?q=#{input}"
output = output.to_str

puts
puts " Results:".center(70)
puts "@`,`,`,`,---------``".center(70)
puts
puts output
puts
