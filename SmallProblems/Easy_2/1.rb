# Build a program that randomly generates and prints
# Teddy's age. Should be 20 - 200.
# "Teddy is 101 years old!"

# ask user for a name, and supply teddy if no name given

puts "Whose age would you like to know?"
name = gets.chomp

if name == ''
  name = "Teddy"  #Default if no name is entered.
end

# we'll use Array#sample to select a random number
age = (20..200).to_a.sample

puts "#{name} is #{age} years old!"

# Also could've used age = rand(20..200)