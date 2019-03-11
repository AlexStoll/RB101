# num1 is the count
# num2 is the first in the sequence
# rest of sequence is multiples of num2

def sequence(num1, num2)
  output = (1..num1).to_a
  output.map {|x| x * num2}
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []