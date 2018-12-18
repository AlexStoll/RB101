# takes a positive integer, and returns a string
# of 1's and 0's, starting with one, of the length of the
# integer


def stringy(num)
  numbers = []

  num.times do |number|
    result = number.even? ? 1 : 0
    numbers << result
  end

  numbers.join   
end

p stringy(10)