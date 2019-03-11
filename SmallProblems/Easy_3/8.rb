# write a method that returns true
# if the string passed is a palindrome
# case, punctuation, and spaces matter

def palindrome?(input)
  input == input.reverse
end
 

p palindrome?([1, 2, 3, 2, 1])