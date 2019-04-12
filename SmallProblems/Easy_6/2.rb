# Lettercase Counter

# Problem
# Take a string, return a hash with 3 entries:
# number of lowercase chars
# number of uppercase chars
# number of other chars

# Example
# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }

# Data
# A string, a hash

# Algorithm
# Count lowercase, count uppercase, string.size - (upper + lower)

# Code

def letter_case_count(string)
  result = { lowercase: 0, uppercase: 0, neither: 0 }
  result[:uppercase] = string.count('A-Z') 
  result[:lowercase] = string.count('a-z') 
  result[:neither]   = string.count('^A-Za-z')
  
  result
end

p letter_case_count('dgO  ...Ob')


