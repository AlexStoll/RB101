arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# Return new array of same structure but with sub arrays ordered
# in descending order

arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end

p arr