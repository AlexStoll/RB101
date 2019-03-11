# takes a string
# returns string where case of letters is swapped
# something like an array.each where you do
# if (A-Z) letter.downcase
# elsif (a-z) letter.upcase

def swapcase(string)
  result = string.chars.map do |char|
    if ("A".."Z").to_a.include?(char)
      char.downcase
    elsif ("a".."z").to_a.include?(char)
      char.upcase
    else
      char
    end
  end
  result.join
end

p swapcase('Camel Case')
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'