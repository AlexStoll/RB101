# get six numbers from the user

# print a message describing whether the 6th is one of the
# first 5
puts "==> Enter the 1st number:"
num1 = gets.chomp.to_i
puts "==> Enter the 2nd number:"
num2 = gets.chomp.to_i
puts "==> Enter the 3rd number:"
num3 = gets.chomp.to_i
puts "==> Enter the 4th number:"
num4 = gets.chomp.to_i
puts "==> Enter the 5th number:"
num5 = gets.chomp.to_i
puts "==> Enter the last number:"
num6 = gets.chomp.to_i

# going to add the first five inputs to an array
list = [num1, num2, num3, num4, num5]

# perform array.include?(6th number)
if list.include?(num6)
  puts "#{num6} is included in #{list}."
else
  puts "#{num6} is not in #{list}."
end
