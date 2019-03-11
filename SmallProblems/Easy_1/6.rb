# takes a string as an argument
# returns the given string with all 5 or more letter
# words reversed

def reverse_words(str)
  words = str.split.map do |word|
    if word.size > 5
      word.reverse
    else
      word
    end
  end
  words.join(' ')
end

p reverse_words('Professional')
p reverse_words('Walk around the block')