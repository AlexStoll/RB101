# Problem

# Takes a string of words
# Returns a hash that shows the number of words
# of different sizes

# Examples

#word_sizes('Four score and seven.') ==
#{ 3 => 1, 4 => 1, 5 => 1, 6 => 1 }

# Data

# Start with a string
# Split to an array of words
# Work that into a hash of key(num_chars) values (occurences)


# Algorithm

# Split string into an array of words
# Over each word in array
# => set its number of chars to a key in the result hash
# => and add one to the value

# Code

def word_sizes(string)
  result = Hash.new(0)
  string.split.each do |word|
    raw_word = word.delete('^A-Za-z')
    result[raw_word.size] += 1
  end
  result
end

word_sizes("my do__g ha's fle''as")





