# Take a positive integer
# return a string of 1s and 0s the length of the string

def stringy(number)
  result = ''
  number.times {|i| i.even? ? result << '1' : result << '0'}
  result
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'