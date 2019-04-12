# Staggered Caps 1

# Problem
# Takes a string, returns new string with a staggered
# capitalization scheme LiKe tHiS
# spaces count for stagerring, so same case either side of a space

# Example
# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'

# Data
# String into an array, back to a string

# Algorithm
# Split string into chars. each_with_index to Upcase at even indeces, downcase at odds

# Code
def staggered_case(string, first = 'uppercase')
  result = string.chars
  result.each_with_index do |char, index|
      if first == 'uppercase'
      index.even? ? char.upcase! : char.downcase!
      else
      index.odd? ? char.upcase! : char.downcase!
    end
  end
  result.join
end

p staggered_case('I Love Launch School!')
p staggered_case('I love Launch School!', []) # == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

