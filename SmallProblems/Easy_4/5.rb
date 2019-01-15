# searches for multiples of 3 and 5 between 1 and input
# then finds sum of all those numbers
# use range (1..input)


def multisum(num)
  result = 0
  for i in (1..num)
    if i % 3 == 0 || i % 5 == 0
      result += i
    end
  end
  result
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
