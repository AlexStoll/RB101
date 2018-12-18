# write a method that returns an Array
# containing every other element of the array

def oddities(array)
return_array = []
  array.each do |x|
    if array.index(x).even?
      return_array << x
    end
  end
return_array
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []