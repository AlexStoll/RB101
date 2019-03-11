# Take a string, return new string where the first character of each word is capitalized

# could split into words, and do each word[0] upcase

def word_cap(string)
  string.split.map(&:capitalize).join(' ')
end
#  words.each do |word|
#    word.capitalize!
#  end

#  words.join(' ')

p word_cap("My dog 'is' a lion")
