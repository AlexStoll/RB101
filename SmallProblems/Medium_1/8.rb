# Fib Numbers Recursive

# Compute the nth Fibonacci number

def fibonacci(nth)
  return 1 if nth <= 2
  fibonacci(nth - 1) + fibonacci(nth - 2)
end

p fibonacci(10)