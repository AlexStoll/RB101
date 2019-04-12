# find multiples of 3 or 5 between 1 and num
# compute the sum of those multiples

def multisum(num)
  (1..num).to_a
          .select {|x| (x % 3 == 0) || (x % 5 == 0)}
          .inject(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168