# Ask user for a string and return the number of characters, excluding spaces.

print "Please write a word or multiple words: "
string = gets.chomp

number_of_letters = string.gsub(' ', '').size

puts "There are #{number_of_letters} letters in '#{string}'."