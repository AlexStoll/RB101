def substrings_at_start(string)
  result = []
  string.size.times {|i| result << string[0..i]}
  result
end

p substrings_at_start('abc')  == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
