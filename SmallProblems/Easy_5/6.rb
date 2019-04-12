# Takes a string, returns a hash
# Number of words of given size
# word_sizes('Four score and seven.') =>
# { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }

def word_sizes(str)
  output = Hash.new
  word_list = str.split(' ')
  word_sizes = word_list.map {|word| word.size}
  word_list.each do |word|
    output[word.size] = word_sizes.count(word.size)
  end
  output
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
