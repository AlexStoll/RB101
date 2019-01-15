# Problem

# Write a method that takes an array of strings
# returning an array, which is the same except without
# the vowels

# Examples

# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(AEIOU)) == ['']

# Data

# an array of strings

# Algorithm

# iterate over the array, either selecting non-vowels or deleting vowels

# Code

def remove_vowels(strings)
  strings.map { |string| string.delete('aeiouAEIOU')}
end

p remove_vowels(%w(ab cd fg))
