# take an array of integers
# return the average of the numbers in the array

def average(arr)
  sum = arr.reduce(:+).to_f
  sum / arr.size
end

p average([1, 2])