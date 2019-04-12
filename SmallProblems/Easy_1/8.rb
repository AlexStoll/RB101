# Method accepts an array, and returns the average of its numbers

def average(array)
  array.inject(:+) / array.size
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40