  # true if all letters are upcase
  # false otherwise
  # ignore non-letters

def uppercase?(str)
  return false if str == ""
  
  str.upcase == str
end 

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == false