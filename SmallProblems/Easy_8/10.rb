# Get middle char

# Takes string, returns the middle character
# If string.length.odd? return string[string.size/2]
# If string.length.even? return string[string.size/2 -1] + string[string.size/2]

def center_of(string)
  size = string.size
  mid = size / 2
  
  size.odd? ? string[mid] : string[mid - 1] + string[mid]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'