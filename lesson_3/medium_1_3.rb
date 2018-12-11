def factors(number)
  divisor = number
  factors = []
  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

# This factoring method fails at 0 or negative nums.

p factors(-5)
p factors(0)
p factors(10)