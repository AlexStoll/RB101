
def repeater(string)
  output = ""
  string.chars.each do |char|
    output << char * 2
  end
  output
end


p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''