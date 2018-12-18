# takes a string as an argument
# returns the given string with all 5 or more letter
# words reversed

def reverse_big_words(string)
  words = ''
  string.split.each do |word|
    if word.size >= 5
      words << word.reverse + ' '
    else
      words << word + ' '
    end
  end
  words
end

p reverse_big_words("a really big collection")
