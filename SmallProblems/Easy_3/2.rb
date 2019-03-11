# prompt the user for two integers
# print results of
# addition, subtraction, product, quotient, remainder, and power

puts "==> Enter the first number:"
first = gets.chomp.to_i

second = 0
loop do
  puts "==> Enter the second number:"
  second = gets.chomp.to_i
  break if second != 0
  puts "Second can't be a 0"
end

puts "==> #{first} + #{second} = #{first + second}"
puts "==> #{first} - #{second} = #{first - second}"
puts "==> #{first} * #{second} = #{first * second}"
puts "==> #{first} / #{second} = #{first.to_f / second.to_f}"
puts "==> #{first} % #{second} = #{first % second}"
puts "==> #{first} ** #{second} = #{first ** second}"

