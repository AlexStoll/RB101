# Multiply Lists

# Problem
# Takes two arrays, returns a new array
# with the product of each pair as the arguments

# Example
# multiply_list([1, 2, 3], [3, 2, 6]) == [3, 4, 18]

# Data
# two arrays, a third output array

# Algorithm
# Iterate through one array, assigning the result of multiplying
# to the result array

# Code
def multiply_list(array_1, array_2)
  result = []
  array_1.size.times do |index|
    result << array_1[index] * array_2[index]
  end
  result
end

def zip_multiply_list(array_1, array_2)
  array_1.zip(array_2).map { |pair| pair.reduce(:*) }
end

p zip_multiply_list([3, 5, 7], [9, 10, 11])# == [27, 50, 77]

#p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]