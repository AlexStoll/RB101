# Rotation (Part 3)

# Find the maximum rotation of the number

# Algorithm
# using rotate_rightmost_digits
# likely using a loop and counter
# everytime number is the input number being modified each loop
# first time n = array.size
# second time n = array.size - 1
# break when n = 0


def rotate_array(array)
  output = array.clone
  output.push(output.shift)
end

def rotate_rightmost_digits(number, n)
  num_array = number.to_s.chars
  num_array[-n..-1] = rotate_array(num_array[-n..-1])
  num_array.join.to_i
end

def max_rotation(number)
  num_size = number.to_s.size
  counter = 0
  until counter == num_size do 
    number = rotate_rightmost_digits(number, num_size - counter)
    counter += 1
  end
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15