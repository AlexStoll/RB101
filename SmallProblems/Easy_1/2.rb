# Write a method that takes one integer argument
# is_odd?(integer)

# Returns true if absolute value is odd.
# Don't need to verify input.

def is_odd?(integer)
  integer % 2 == 1
end

p is_odd?(40)