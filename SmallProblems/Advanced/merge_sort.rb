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

def merge_sort(array)
  return array if array.size == 1

  sub_array_1 = array[0...array.size / 2]
  sub_array_2 = array[array.size / 2...array.size]

  sub_array_1 = merge_sort(sub_array_1)
  sub_array_2 = merge_sort(sub_array_2)

  merge(sub_array_1, sub_array_2)
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]