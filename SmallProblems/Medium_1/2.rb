def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end


def rotate_rightmost_digits(num, digit)
  # take the [-digit] number and make it the last
  # use rotate_array, and feed [-digit..array.size] to it
  digits = num.to_s.chars
  digits[-digit..-1] = rotate_array( digits[-digit..-1])
  digits.join.to_i
end

p rotate_rightmost_digits(12345, 3)