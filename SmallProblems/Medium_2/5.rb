# triangle classifier

# accepts three integers
# returns :equilateral, :scalene, :isosoles, or :invalid

# :equilateral
#  three non-zero and equal values
# 
# :invalid
# sum of two min sides <= longest side
#
# :isosoles
# valid with two equal sides
#
# :scalene
# valid with all sides different length

def triangle(num_1, num_2, num_3)
  lengths = [num_1, num_2, num_3]
  case
  when lengths.min(2).inject(:+) <= lengths.max || lengths.include?(0)
    :invalid
  when num_1 == num_2 && num_1 == num_3
    :equilateral
  when num_1 == num_2 || num_1 == num_3 || num_2 == num_3
    :isosceles
  else :scalene
  end
end

def triangle(s1, s2, s3)
  array = [s1, s2, s3]
  array.sort!

  if array[0] + array[1] <= array[2] then :invalid
  elsif array[2] == array[0] then :equilateral
  elsif array.uniq.size == 3 then :scalene
  else :isosceles
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 1, 3) == :invalid
p triangle(3, 1, 1) == :invalid