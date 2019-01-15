def mystery_math(string)
# change first operator (sub) to a ?
  result = string.gsub(/[\+\-\*\/]/,'?')
  p string
  p result
end

mystery_math('1 + 2 - 10 = 5')