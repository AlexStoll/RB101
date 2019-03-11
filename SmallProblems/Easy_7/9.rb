# Multiply All Pairs

# multiply_all_pairs([2, 4]), [4, 3, 1, 2]) ==
                    # [2, 4, 4, 6, 8, 8, 12, 16]

# Multiply each value in the first by each in the second

# Sort array in increasing value

def multiply_all_pairs(arr1, arr2)
  products = []
  arr1.each do |x|
    arr2.each do |y|
      products << x * y
    end
  end
  products.sort
end

a = [1, 2]
b = [3, 4]

p multiply_all_pairs(a, b)