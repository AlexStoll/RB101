# returns true if the integer is a palindrome

# convert to string, reverse that, then back to an integer

def palindromic_number?(integer)
  integer.to_s.reverse.to_i == integer
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true