
text = File.read('sample_text.txt')
sentences = text.split(/\.|\?|!/)
largest_sentence = sentences.max_by { |sentence| sentence.split.size}
largest_sentence = largest_sentence.strip
number_of_words = largest_sentence.split.size
words = text.split(/\-|\.|\?|!|\s/)
largest_word = words.max_by { |word| word.size}

puts "'#{largest_word}'' is the largest word."
puts "#{largest_sentence}"
puts "#{number_of_words} words"