# Return the next to last 'word' in a String
=begin
def penultimate(string)
  words = string.split
    if words.size < 2
      "No penultimate word, string too short."
    else
    words[-2]
  end
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
=end

def middle_word(string)
  if string.class != String
    return "Argument must be a string."
  end

  words = string.split
  if words.size.even?
    "No middle in an even number of words."
  elsif words.size == 1
    words[0]
  else words[words.size / 2]
  end
end

p middle_word('dog')
p middle_word('big red fluffy dog')
p middle_word('There are seven two more words in this sentence.')
p middle_word(:dog)
p middle_word(23)