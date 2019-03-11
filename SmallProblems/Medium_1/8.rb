# fib(1) = 1
# fib(2) = 2
# fib(n) = fib(n-1) + fib(n-2) (where n > 2)



def fib(n)
  if n <= 2
    1
  else
    fib(n-1) + fib(n-2)
  end
end

p fib(3)
p fib(12)
p fib(400)