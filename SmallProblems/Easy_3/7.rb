# write a method that returns an Array
# containing every other element of the array

def halfer(arr)
  even_elements = []
  index = 1
  while index < arr.size
    even_elements << arr[index]
    index += 2
  end
  even_elements
end

a = [0, 1, 2, 3, 4, 5, 6]

def odd_index(arr)
  arr2 = []
  arr.each_with_index do |num, index|
    if index.odd?
      arr2 << num
    end
  end
  arr2
end

p odd_index(a)