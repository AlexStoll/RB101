# method that takes a string and returns a new string
# with the order of the words reversed

def reverse_sentence(str)
  str.split.reverse.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'