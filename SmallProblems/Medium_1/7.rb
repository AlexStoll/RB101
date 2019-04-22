# Word to Digit

# Take a sentence string
# Return the SAME string with any number words converted to digits

DIGIT_HASH = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
             .zip((0..9).to_a.map(&:to_s)).to_h

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end

p word_to_digit('one two three dog nine')
