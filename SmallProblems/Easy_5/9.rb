# When a character appears more than once in a row,
# collapse it down to a single character.

# crunch('aabccc') => 'abc'

def crunch(str)
  output = ''
  letters = str.chars
  letters.each_with_index do |character, idx|
    if letters[idx] != letters[idx + 1]
      output << character
    end   
  end
  output
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

