# ask user for an input of a string
# give the user the number of characters, not counting
# spaces

puts "Please write a word or multiple words:"
input = gets.chomp
number_of_chars = input.delete(' ').size

puts "There are #{number_of_chars} characters in \"#{input}\"."