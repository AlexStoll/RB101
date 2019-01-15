# Problem

# Take a string of words, and return a string where
# the first and last letters of every word are swapped

# Example

# swap('Oh what a wonderful day') == 'hO thaw a londerfuw yad'

# Data

# A string, which we'll convert to an array of words
# Strings - which we'll use index to find first and last letter

# Algorithm

# Split the input into an array words
# Iterate over that array, flipping the first and last
# using string[0] = string['1']
# string[-1] = string[0]
# Convert the array to a string

# Code

def swap(string)
  words = string.split(' ')
  words.each do |word|
    word[0], word[-1] = word[-1], word[0]
  end
  words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'