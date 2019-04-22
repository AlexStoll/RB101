# takes two sorted arrays
# returns a new array with
# all elements from both in sorted order

# build result array one element at a time

def merge(array_1, array_2)
  number = 0
  result = []
  loop do
    if array_1.include?(number)
      array_1.count(number).times {result << number}
    end

    if array_2.include?(number)
      array_2.count(number).times {result << number}
    end
    number += 1
    break if result.size == array_1.size + array_2.size
  end
  result
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]