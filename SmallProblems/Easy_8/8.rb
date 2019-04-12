#character * 2 unless - vowel, digit, whitespace, punctuation

def double_consonants(string)
  string.chars.map do |x|
    if (x =~ /[a-z]/i) && (x =~ /[^aeiou]/i)
      x * 2
    else x
    end
  end.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""