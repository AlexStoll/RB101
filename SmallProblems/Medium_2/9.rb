# Bubble Sort

# Write a method that implements a bubble sort algo
# This is done 'in-place' mutating the argument

def bubble_sort!(array)
  loop do
    change_made = false
    1.upto(array.size - 1) do |i| 
      if array[i - 1] > array[i]
      array[i - 1], array[i] = array[i], array[i - 1]
      change_made = true
      end
    end
    break if change_made == false
  end
  nil
end


array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]