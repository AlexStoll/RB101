# Return an array containing every other element in an array
def oddities(arr)
  arr.select {|x| arr.index(x).even?}
end

def evenies(arr)
  arr.select {|x| arr.index(x).odd?}
end

p evenies([2, 3, 4, 5, 6]) == [3, 5]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []