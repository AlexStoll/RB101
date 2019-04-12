# Exclusive Or
# Write a method named 'xor' that takes two args
# returns true if exactly one argument is truthy, false otherwise

def xor(arg1, arg2)
  (arg1 && !arg2) || (!arg1 && arg2)
end

p xor(true, false)
p xor(true, true)
p xor(false, false)