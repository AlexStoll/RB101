# Problem

# Modify word_sizes to exclude non-letters

# Example

# word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }

# Data

# Algorithm

# Code

def word_sizes(string)
  result = Hash.new(0)
  string.split.each do |word|
    new_word = word.delete('^A-Za-z')
    result[new_word.size] += 1
  end
  result
end

p word_sizes("That's not a gr8 way!")