# Double Doubles
# Write a method that returns 2 times the argument UNLESS
# If it's a double number:
# Even number of digits, left-side digits == right-side digits
# return it as is

# so do double number check, then return num if true, num*2 if false

def twice(num)
  str_num = num.to_s
  mid = (str_num.size / 2) - 1
  return num if str_num.size == 1
  
  if (str_num[0..mid] == str_num[(mid + 1)..-1])
    num
  else num * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
 twice(5)# == 10