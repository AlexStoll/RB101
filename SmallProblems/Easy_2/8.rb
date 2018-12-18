# write a program that asks user to enter int > 0

# then ask if user wants to determine sum or product
# of all numbers between 1 and the integer

def compute_sum(number)
  total = 0
  1.upto(number) {|value| total += value}
  total
end

def compute_product(number)
  total = 1
  1.upto(number) {|value| total *= value}
  total
end

puts ">> Please enter an integer greater than 0:"
int = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp.to_s

if operation == 's'
  result = compute_sum(int)
  puts "The sum of the integers between 1 and #{int} is #{result}"
elsif operation == 'p'
  result = compute_product(int)
  puts "The product of integers between 1 and #{int} is #{result}"
else
  puts "Enter 'p' or 's' next time."
end