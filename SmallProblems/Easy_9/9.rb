# determine average of three scores
# return letter grade

def get_grade(num_1, num_2, num_3)
  score = (num_1 + num_2 + num_3) / 3.0
  
  case score
  when 100.. then   'A+'
  when 90..100 then 'A'
  when 90..89 then  'B'
  when 70..79 then  'C'
  when 60..69 then  'D'
  else              'F'
  end
end

p get_grade(95, 90, 200)
p get_grade(50, 50, 95)