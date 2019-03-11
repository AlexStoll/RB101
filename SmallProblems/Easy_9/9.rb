def get_grade(x, y, z)
  score = (x + y + z)/3
  if score < 60
    "F"
  elsif score < 70
    "D"
  elsif score < 80
    "C"
  elsif score < 90
    "B"
  elsif score < 100
    "A"
  elsif score > 100
    "A+"
  end
end

p get_grade(90, 95, 140)
p get_grade(80, 10, 2)