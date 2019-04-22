# Next featured number

# Odd
# Multiple of 7
# No repeating digits

def featured_num?(num)
  num.odd? && num % 7 == 0 && num.digits.uniq == num.digits
end

def featured(num)
  if num >= 9876543210
    return "No featured number greater than #{num}."
  end
  
  num += 1
  num += 1 until featured_num?(num)
  num
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(9876543211)# == 1_023_547