# ask user for an input of a string
# give the user the number of characters, not counting
# spaces

# prompt user for input

# remove spaces from input and count the characters
# return that number, along with the original input

puts "Input a string."
string = gets.chomp
count = string.delete(' ').size
puts "There are #{count} characters in the given string."

# could convert to array, delete ' ', then count
# but simpler to just delete spaces, then count with String#size
