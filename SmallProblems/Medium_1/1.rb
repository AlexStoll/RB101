def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_string(str)
  output = ""
  rotate_array(str.chars).each {|char| output << char}
  output
end 

def rotate_number(num)
  rotate_string(num.to_s)
end

p rotate_array([1, 2, 3, 4, 5])

p rotate_string('dog')

p rotate_number(12345)