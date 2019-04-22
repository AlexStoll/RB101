def nth_fibonacci(nth)
  first = 1
  second = 1

  3.upto(nth) do
    first, second = second, (first + second)
  end
  second
end

def fibonacci_last(n)
  nth_fibonacci(n).digits[0]
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20) 