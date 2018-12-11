numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# uniq is not going to modify the caller, it will
# return a different array. Therefor, numbers will remain unchanged.