# Write a method that takes one integer argument
# is_odd?(integer)

# Returns true if absolute value is odd.
# Don't need to verify input.

def is_odd?(integer)
  integer % 2 != 0
end

puts is_odd?(23) # true
puts is_odd?(24) # false
puts is_odd?(-3) # true
puts is_odd?(-4) # false


# puts is_odd?(2) # => false