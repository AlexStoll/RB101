# (0..100).some_method?(42)


p (0..100).cover?(42.5)
# this returns true if the given value is within the range
# but does the exact value have to be a part of the range?
# Nope. Any value in the range returns true.


# If we want to know if a certain value is a part of the range
# we'll have to convert to an array and search over that.
range = (0..100).to_a
p range.include?(42.5)
# returns false
# there is no Array#cover method