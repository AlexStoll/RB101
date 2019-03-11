# takes array of int's as input
# multiplies all together (inject?)
# divides the result by the number of entries
# then rounds result to 3 decimal places

def show_multiplicative_average(arr)
  average = (arr.inject(:*).to_f) / arr.size.to_f
  puts "The result is #{format('%.3f', average)}"
end

show_multiplicative_average([3, 5])

show_multiplicative_average([6])

show_multiplicative_average([2, 5, 7, 11, 13, 17])
