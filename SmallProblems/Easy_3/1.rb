# get six numbers from the user

# print a message describing whether the 6th is one of the
# first 5

nums = []

puts "Enter the 1st number:"
nums << gets.chomp.to_i

puts "Enter the 2nd number:"
nums << gets.chomp.to_i

puts "Enter the 3rd number:"
nums << gets.chomp.to_i

puts "Enter the 4th number:"
nums << gets.chomp.to_i

puts "Enter the 5th number:"
nums << gets.chomp.to_i

puts "Enter the 6th number:"
a = gets.chomp.to_i

if nums.include?(a)
  puts "The number #{a} appears in #{nums}"
else
  puts "The number #{a} does not appear in #{nums}"
end