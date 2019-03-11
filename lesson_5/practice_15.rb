arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# Return an array which contains hashes where ALL ints are even

arr2 = 
arr.select do |hsh|
  hsh.all? do |_, value|
    value.all? do |n|
      n.even?
    end
  end
end

p arr2
      