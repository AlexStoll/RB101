def danish(string)
  string = string.sub(/\b(apple|cherry|blueberry)\b/, 'danish')
end

p danish('The cherry of my eye')
p danish('apple. cherry. blueberry.')
p danish('I love pineapple')