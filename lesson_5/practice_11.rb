arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# Use select or reject to return a new array
# containing only the integers that are mulitples of 3
arr.map do |sub_array|
  sub_array.select do |num|
    num % 3 == 0
  end
end
