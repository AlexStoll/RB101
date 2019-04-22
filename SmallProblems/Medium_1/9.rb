def nth_fibonacci(nth)
  first = 1
  second = 1

  3.upto(nth) do
    first, second = second, (first + second)
  end
  second
end

p nth_fibonacci(10)