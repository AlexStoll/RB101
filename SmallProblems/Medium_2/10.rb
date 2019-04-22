# sum square difference

# use a range (0..num)
# to get the square of the sums
# (0..num).inject(:+) then ** 2

# to get sum of squares
# sum = 0
# (0..num).each do |num|
#   sum += num ** 2
# end

def sum_square_difference(num)
  square_of_sum = (0..num).inject(:+) ** 2
  sum_of_square = (0..num).map { |num| num ** 2}.inject(:+)
  square_of_sum - sum_of_square
end

p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
