


def fib_last_digit(n)
  first, last = [1, 1]
  3.upto(n) do
    first, last = [last, first + last]
  end

  last.to_s[-1].to_i
end


p fib_last_digit(15)
p fib_last_digit(20)
p fib_last_digit(100)