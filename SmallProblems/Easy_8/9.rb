# reverse number
# take an integer, return it with its digits reversed

# Algorithm
# convert to string, reverse, convert to integer

def reversed_number(num)
  num.to_s.reverse.to_i
end

p 123998.digits

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1