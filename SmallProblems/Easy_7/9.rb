# Multiply all pairs

def multiply_all_pairs(array_1, array_2)
  result = []
  array_1.each do |first|
    array_2.each do |second|
     result << first * second
   end
  end
  result.sort
end

first = [2, 4]
second = [1, 2, 3]

p multiply_all_pairs(first, second) == [2, 4, 4, 6, 8, 12]

