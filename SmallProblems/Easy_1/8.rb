# take an array of integers
# return the average of the numbers in the array

def average(array)
  sum = 0
  array.each {|element| sum += element}
  average = sum / array.size # or array.count
end

  
p average([1, 2, 20])