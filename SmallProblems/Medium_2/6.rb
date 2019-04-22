# More triangle action

# Write a method that takes three integers representing angles of a triangle
# Returns :acute, :obtuse, :right, or :invalid

def triangle(angle_1, angle_2, angle_3)
  angles = [angle_1, angle_2, angle_3]
  case
  when angles.inject(:+) != 180 || angles.include?(0)
    :invalid
  when angles.include?(90)
    :right
  when angles.any? { |angle| angle > 90}
    :obtuse
  when angles.all? { |angle| angle < 90 }
    :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid