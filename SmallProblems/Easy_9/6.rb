# Takes string as argument
# Returns an array of each "word word.length" as a string
# Anything seperated by a space counts as a word

# Split string into words array
# map that array's strings to append word.length

def word_lengths(string)
  string.split(' ').map { |word| "#{word} #{word.length}" }
end


puts word_lengths("house dog mouse log")