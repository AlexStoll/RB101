# Counting Up

# Takes an integer, returns an array of all ints
# between 1 and integer

def sequence(num)
  num > 0 ? (1..num).to_a : (num..0).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(-11)