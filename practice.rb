# # Write a function that will return the count of 
# distinct case-insensitive alphabetic characters 
# and numeric digits that occur more than once in
# the input string. The input string can be assumed
# to contain only alphabets (both uppercase and lowercase)
#  and numeric digits.

# Takes a string, returns a number
# Number is count of distinct characters and digits
# that occur more than once

# Create an array of characters that occur more than once
# 
# return the size of an array of unique characters in that array

def duplicate_count(string)
  dup_letters = []
  string.downcase.chars.each do |char|
    dup_letters << char if string.downcase.count(char) > 1
  end
  dup_letters.uniq.size
end

# p duplicate_count("") == 0
# p duplicate_count("abcde") == 0
# p duplicate_count("abcdeaa") == 1
# p duplicate_count("abcdeaB") == 2
# p duplicate_count("Indivisibilities") == 2

# Given a string of words, you need to find the highest scoring word.
# Each letter of a word scores points according to it's position in the alphabet: a = 1, b = 2, c = 3 etc.
# You need to return the highest scoring word as a string.
# If two words score the same, return the word that appears earliest in the original string.
# All letters will be lowercase and all inputs will be valid.

def high(string)
  letter_scores = ('a'..'z').zip(1..26).to_h
  words = string.split

  word_scores = words.map do |word|
    score = 0
    word.chars.each { |char| score += letter_scores[char]}
    score
  end
  words[word_scores.index(word_scores.max)]
end



# p high('man i need a taxi up to ubud') == 'taxi'
# p high('what time are we climbing up the volcano') == 'volcano'
# p high('take me to semynak') == 'semynak'
# p high('aa b') == 'aa'

# arr1 = ["a", "b", "c"].freeze
# arr2 = arr1.dup
# p arr2
# p arr1

a = 'dog'
b = a

a << 'cat'

loop do
  1.times {puts 'Hi'}
end

p a
p b

system("clear")

