#dasherizer(2112) == '21-12'
# inserts a - between odd numbers, returns a string

# convert number to array of digits
# iterate over that array, adding each number to
# a new string
# if two odd numbers in a row, insert a '-' betwee

def mapping_things(arr)
  new_arr = []
  arr.map do |value|
    new_arr << value unless value.odd?
  end
end

# new_arr does not get returned at the end of the method
# so return of arr.map will be returned from the method
# [nil, 2, nil, 4, nil, 6]

x = [1, 2, 3, 4, 5, 6]
p mapping_things(x)