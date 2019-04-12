# Take an integer and return an array of its digits

def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

p digit_list(12345)
p digit_list(7)