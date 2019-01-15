# What are the final values of a and b?

a = 2
b = [5, 8]
arr = [a, b]
# arr = [2, [5, 8]]
arr[0] += 2
# arr = [4, [5, 8]]
# a = 4
arr[1][0] -= a
# arr = [4, [1, 8]]
# b = [1, 8]
 
p a

p arr
p b