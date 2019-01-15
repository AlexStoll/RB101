# Problem

# take a string, and remove non-alphabetic chars,
# replacing them with spaces.

# Examples

# cleanup("--- what's my +*& line?") == ' what s my line '

# Data



# Algorithm

# Write a regex expression to detect non-alphabetic chars
# and use gsub to replace them with spaces

# Code
def cleanup(text)
  text = text.gsub(/[^a-z]/i, ' ').squeeze(' ')

end

p cleanup("r3m0ve th3 - non-alphabetic ch@ars")
