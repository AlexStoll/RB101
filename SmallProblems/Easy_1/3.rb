# Write a method that
# Takes one argument, a positive integer
# Returns a list of digits in the number.

def digit_list(num)
  num.to_s.split("").map(&:to_i)
end

p digit_list(129390)