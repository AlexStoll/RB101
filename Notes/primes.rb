# Write a method that takes two numbers,
# printing all the primes between the two.

# primes_between(3, 10)
# => 3, 5, 7

def is_prime?(number)
  (2..(number - 1)).each do |divisor|
    return false if number % divisor == 0
  end

  true
end

def find_primes(low, high)
  (low..high).select do |number|
    # check if number is prime
    is_prime?(number)
  end
end

p find_primes(10, 20)
p find_primes(1, 2)