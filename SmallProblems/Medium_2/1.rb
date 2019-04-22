# Find longest sentence by number of words
# Return longest sentence and its word count


text = File.read('frankenstein.txt')

sentences = text.split(/[!?.]/).each {|sent| sent[0] = '' if sent[0] == ' '}
longest_sentence = ''
most_words = 0
sentences.each do |sent|
  word_count = sent.split(' ').size
  longest_sentence = sent if word_count > most_words
  most_words = word_count if word_count > most_words
end

puts "The longest sentence is: '#{longest_sentence}.'. It has #{most_words} words."