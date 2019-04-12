# Write a method that takes an integer and returns
# its negative value

# Algorithm
# Get absvalue of num, then num * -1

def negative(num)
  - num.abs
end

p negative(0)
p negative(-5)