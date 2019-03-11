# fib(1) = 1
# fib(2) = 2
# fib(n) = fib(n-1) + fib(n-2) (where n > 2)

# Write a non-recursive, or procedural version.


def fib_rec(n)
  if n <= 2
    1
  else
    fib(n-1) + fib(n-2)
  end
end


def fib_pro(n)
  first, last = [1, 1]
  3.upto(n) do
    first, last = [last, first + last]
  end

  last
end

p fib_pro(12)
p fib_pro(15)