# Write a method that takes an Array as an argument
# reverses it elements in place, modifying the original array
# can't use reverse

# list = [1, 2, 3, 4]
# result = reverse!(list)
# list == [4, 3, 2, 1]
# list.object_id == result.object_id

def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index]= array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end
end