# Interweave two arrays

# interweave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Data
# Two input arrays, one output
# Use index and loop to add each element of same index to new array
# 

def interweave(arr1, arr2)
  index = 0
  product = []
  loop do
    product << arr1[index]
    product << arr2[index]
    index += 1
    break if index >= arr1.size
  end
product
end

a = [1, 2, 3]
b = ['a', 'b', 'c']

p interweave(a, b)