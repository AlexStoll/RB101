# print all odd numbers (1..99) on seperate lines
=begin

My answer:

for i in (1..99)
  puts i if i % 2 == 1
end

Provided answer:

x = 1
while x <= 99
  puts x
  x += 2
end
=end

1.upto(99) {|num| puts num if num % 2 == 1}