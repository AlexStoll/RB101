def substrings_at_start(string)
  result = []
  string.size.times { |i| result << string[0..i]}
  result
end

def substrings(str)
  result = []
  str.size.times { |i| result << substrings_at_start(str[i..-1])}
  result.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]