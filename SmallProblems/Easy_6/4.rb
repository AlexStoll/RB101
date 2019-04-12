# Swap Case

# Problem
# Swap the case of each letter in a string

# Example
# swapcase('CamelCase') == 'cAMELcASE'

# Data
# String split to a chars array, joined back to a string

# Algorithm
# Split into chars
# Map through chars, if upcase => downcase, if downcase => upcase
# join chars back to a string

# Code

def swapcase(string)
  output = string.chars.map do |char| 
    char == char.upcase ? char.downcase : char.upcase
  end
  output.join
end

p swapcase('CamelCase')
p swapcase('CamelCase') == 'cAMELcASE'