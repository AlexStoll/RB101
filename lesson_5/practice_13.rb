arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# Return a new array containing the same
# sub-arrays but ordered according to the value
# of the odd integers they contain

arr.sort_by do |sub_arr|
  sub_arr.select do |n|
    n.odd?
  end
end


