def substrings_at_start(string)
  substrings = []
  0.upto(string.size - 1) do |index|
    substrings << string[0..index]
  end
  substrings
end

def substrings(string)
count = 0
output = []
  string.size.times do |_|
    output << substrings_at_start(string[count..string.size])
    count += 1
  end
  output.flatten
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end

def palindromes(string)
  output = []
  substrings(string).each do |substring|
    output << substring if palindrome?(substring)
  end
  output
end

p palindromes('madam')