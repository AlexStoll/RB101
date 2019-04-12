# Problem

# Interleave two arrays of the same size
# interleave([1, 2, 3]['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Data
# Two arrays in, one array out

# Algorithm
# iterate through both with a loop and counter
# to add array_1[count], array_2[count]

# Code

def interleave(array_1, array_2)
  result = []
  index = 0

  until index == array_1.size do 
    result << array_1[index] << array_2[index]
    index += 1
  end
  result
end

def interzip(array_1, array_2)
  array_1.zip(array_2).flatten
end


a = [1, 2, 3]
b = ['a', 'b', 'c']

p interzip(a, b)

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
