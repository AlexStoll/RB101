# Test whether a string has a 'balanced' number of ()'s

# Count "(" == Count ")"

def balancer(string)
  return false if string.count("(") != string.count(")")
  
  counter = 0

  string.split("").each do |char|
    counter += 1 if char == "("
    counter -= 1 if char == ")"

    return false if counter < 0
  end
  true
end

a = "(dog(cat))"
b = "(house(mouse)"

p balancer(a)
p balancer(b)



