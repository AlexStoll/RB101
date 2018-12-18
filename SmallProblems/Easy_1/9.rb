# write a method that takes an integer, and returns
# the sum of its digits

def sum_of_digits(int)
  int.digits.sum
end

p sum_of_digits(12345)
p sum_of_digits(202)