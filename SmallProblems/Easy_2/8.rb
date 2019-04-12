system("clear")

puts ">> Please enter an integer greater than 0: "
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
request = gets.chomp
request == 's' ? operation = 'sum' : operation = 'product'

operation == 'sum' ? result = (0..number).inject(:+) : result = (1..number).inject(:*)

puts "The #{operation} of the integers between 1 and #{number} is #{result}"