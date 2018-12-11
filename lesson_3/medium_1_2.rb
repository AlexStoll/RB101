# puts "the value of 40 + 2 is " + (40 + 2)

# Result is an error. How to fix?
# no implicit conversion of int to string
puts "the value of 40 + 2 is " + (40 + 2).to_s

# or

puts "the value of 40 + 2 is #{(40 + 2)}"