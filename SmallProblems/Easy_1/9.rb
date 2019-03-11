# write a method that takes an integer, and returns
# the sum of its digits

def sum(num)
  num.digits.inject(:+)
end

puts sum(23)