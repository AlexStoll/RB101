# method that takes a string and returns a new string
# with the order of the words reversed

def reverse_sentence(sentence)
  sentence.split.reverse.join(' ')
end
p reverse_sentence("All dogs have fleas.")