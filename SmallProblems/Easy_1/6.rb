# Reverse the words longer than 5 chars

def reverse_words(string)
  string.split
        .map {|word| word.size >= 5 ? word.reverse : word}
        .join(' ')
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')