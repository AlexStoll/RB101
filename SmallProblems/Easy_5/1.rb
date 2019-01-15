# Prolem

# Determine and return ASCII string value of a string
# This is the sum of the ASCII values of each char
# String#ord will return ASCII value of a char

# Example

# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251

# Data Structure

# String, an array, then an integer

# Algorithm

# Pass each character to a block, which adds each
# ascii value to a sum variable
# Return that variable

# Code it up

def ascii_value(string)
  sum = 0
  string.each_char {|char| sum += char.ord}
  sum
end

p ascii_value('My dog has fleas')
p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251