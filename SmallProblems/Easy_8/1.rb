# Problem
# Sum of combination of first with each combo of others

# Example
# [1, 2, 3, 4] => (1) + (1 + 2) + (1 + 3) + (1 + 4)

# Data
# An array, and iterating over it, likely with ranges?

# Algorithm
# 
# Code

def sum_of_sums(nums)
  sum_total = 0
  1.upto(nums.size) do |count|
    sum_total += nums.slice(0, count).inject(:+)
  end
  sum_total
end


p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
