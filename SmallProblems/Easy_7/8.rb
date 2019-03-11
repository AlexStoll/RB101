# takes two arrays
# returns a new array
# product of each pair

def multiply_list(arr1, arr2)
  idx = 0
  products = []
  loop do
    products[idx] = arr1[idx] * arr2[idx]
    idx += 1
    break if idx == arr1.size
  end
  products
end

p multiply_list([3, 5, 7], [9, 10, 11])
