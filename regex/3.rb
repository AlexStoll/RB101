def mystery_math(string)
# change first operator (sub) to a ?
  result = string.sub(/[\+\-\*\/]/,'?')
  p string
  p result
end

mystery_math('1 + 2 = 5')