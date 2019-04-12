# Replace non-alphabetic chars with spaces

def cleanup(str)
  str.gsub(/\W/, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '