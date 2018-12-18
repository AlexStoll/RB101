# prompt the user for two integers
# print results of
# addition, subtraction, product, quotient, remainder, and power

# get the two numbers
puts "Enter one positive integer."
int1 = gets.chomp.to_i

puts "Enter another positive integer."
int2 = gets.chomp.to_i

# perform the operations all at once
sum = int1 + int2
difference = int1 - int2
product = int1 * int2
quotient = int1 / int2
remainder = int1 % int2
power = int1 ** int2

# display all results

puts "#{int1} + #{int2} = #{sum}"

puts "#{int1} - #{int2} = #{difference}"

puts "#{int1} * #{int2} = #{product}"

puts "#{int1} / #{int2} = #{quotient}"

puts "#{int1} % #{int2} = #{remainder}"

puts "#{int1} ** #{int2} = #{power}"