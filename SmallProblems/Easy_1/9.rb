# Takes an integer, returns the sum of its digits

def sum(number)
  number.digits.inject(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45