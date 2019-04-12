# Takes two integeres as arguments
# First parameter is a count, second is first number in a sequence
# Return an array of size count
# Numbers are multiples of the second number

# sequence(5, 1) == [1, 2, 3, 4, 5]
# sequence(4, -7) == [-7, -14, -21, -28]

# create a range (1 to count) then convert to array
# map that array, multiplying each value by mult
def sequence(count, first)
  (1..count).map { |x| x * first}
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []

