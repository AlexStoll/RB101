def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(num, digit)
  digits = num.to_s.chars
  digits[-digit..-1] = rotate_array( digits[-digit..-1])
  digits.join.to_i
end

# rotate through the number [123456]
# rotate_rightmost_digits(123456, 6)
# then re-iterate until rotate_rightmost_digits(num, 2)


def max_rotation(num)
  digits = num.to_s.size
  digits.downto(2) do |n|
    num = rotate_rightmost_digits(num, n)
  end
  num  
end

p max_rotation(123456)

