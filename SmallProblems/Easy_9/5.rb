# Takes a string, returns ture if all upcase
# false otherwise

def uppercase?(string)
  return false if string.size == 0
  string.upcase == string
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
