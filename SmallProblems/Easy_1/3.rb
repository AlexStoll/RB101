# Write a method that
# Takes one argument, a positive integer
# Returns a list of digits in the number.

def digit_list(number)
  digits = number.to_s.split('')
  digits.map {|num| num.to_i}
end

p digit_list(12345)