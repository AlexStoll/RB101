# Takes two arguments, which comprise a range.
# For each value in the range
# If num / 3, print "Fizz"
# If num / 5, print "Buzz"
# If num / 3 && 5, print "FizzBuzz"

def fizzbuzz(low, high)
  result = []
  range = (low..high).to_a
  range.each do |x|
    if x % 15 == 0
      result << "FizzBuzz"
    elsif x % 5 == 0
      result << "Buzz"
    elsif x % 3 == 0
      result << "Fizz"
    else
      result << x
    end
  end
  result.join(', ')
end

p fizzbuzz(1, 45)