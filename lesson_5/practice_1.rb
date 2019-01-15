# Order by descending numeric value

# Sort backward, convert to integers within the block
arr = ['10', '11', '9', '7', '8']


p arr.sort do |a,b|
  b.to_i <=> a.to_i
end
