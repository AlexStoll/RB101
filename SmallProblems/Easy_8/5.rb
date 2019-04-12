def substrings_at_start(str)
  result = []
  str.size.times { |i| result << str[0..i]}
  result
end

def substrings(str)
  result = []
  str.size.times { |i| result << substrings_at_start(str[i..-1])}
  result.flatten
end

def palindromes(str)
  substrings(str).select do |item| 
    item if (item == item.reverse && item.size > 1)
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == ['nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt']