# Rotation (Part 2)

# Building on Part 1, write a method that can rotate the 
# last n digits of a number.

# rotate_rightmost_digits(735291, 1) == 735291
# rotate_rightmost_digits(735291, 2) == 735219

# Algorithm
# Call rotate array on the sub-array specified
# When 1, call rotate array on just array[-1]
# When 2, call rotate array on array[-2..-1]
# When 6, call rotate array on array[-6..-1]

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  num_array = number.to_s.chars
  num_array[-n..-1] = rotate_array(num_array[-n..-1])
  num_array.join.to_i
end





p rotate_rightmost_digits(12345, 5)