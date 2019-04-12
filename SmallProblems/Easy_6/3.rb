# Capitalize Words

# Problem
# Take a string, return a new string with each word capitalized

# Example
# word_cap('the javaScript language') == 'The Javascript Language'

# Data
# A string, then an array of words, then an output string

# Algorithm
# Split into words, downcase, capitalize, join

# Code
def word_cap(string)
  string.split.map(&:capitalize).join(' ')
end

def word_cap_without_capitalize(string)
  output = string.split.map(&:downcase).each do |word|
    word[0] = word[0].upcase
  end
  output.join(' ')
end

chunkotext = 'dog cat House d'

p word_cap_without_capitalize(chunkotext)
