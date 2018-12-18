# method running_total
# takes array of numbers
# returns an array with same number of elements,
# each element being a running total from the origingal

# running_total([1, 2, 3]) == [1, 3, 6]

# Just use sum as the running count.

def running_total(array)
  sum = 0
  array.map { |value| sum += value}
end

p running_total([1, 2, 3])