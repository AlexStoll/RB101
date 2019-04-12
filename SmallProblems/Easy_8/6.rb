# Print out the range between the two.
# If divisible by 3 Fizz, if 5 Buzz, if 15 FizzBuzz

def fizzbuzz(num_1, num_2)
  result = []
  (num_1..num_2).each do |num|
      if num % 15 == 0
        result << 'FizzBuzz'
      elsif num % 5 == 0
        result << 'Buzz'
      elsif num % 3 == 0
        result << 'Fizz'
      else result << num
    end
  end
  result.join(', ')
end

puts fizzbuzz(1, 15)
