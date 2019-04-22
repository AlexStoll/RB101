# Rotation (Part 1)

# 'Rotate' an array by moving the first element to the end
# Do not mutate the original array, return a new_arr
# Can't use the built in rotate methods

# Algorithm options

# make a copy, output = array.clone

# output.push(output.shift)
# OR
# array[-1] = array[0]
# array.delete_at(0)

def rotate_array(array)
  output = array.clone
  output.push(output.shift)
end

def rotate_array_2(array)
  output = array.clone
  output << output[0]
  output.delete_at(0)
  output
end

def rotate_string(string)
  rotate_array(string.chars).join
end

def rotate_integer(integer)
  rotate_string(integer.to_s).to_i
end

p rotate_string('abcdefg')
p rotate_integer(1234567)
p rotate_array_2([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

# answer from LS
def rotate_array(array)
  array[1..-1] + [array[0]]
end