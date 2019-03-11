
def double_num?(input)
  num = input.to_s
  num[0...(num.size/2)] == num[(num.size/2)..-1]
end

def twice_unless_double(num)
  if double_num?(num)
    num
  else
    num * 2
  end
end

p twice_unless_double(45)
p twice_unless_double(123456789123456789)
