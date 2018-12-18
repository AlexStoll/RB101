# find palindromes
# this time case-insensitive, ignoring non-letters
def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(string)
  # modify to downcase, and remove non-letters
  test_string = string.downcase.delete('^a-z0-9')
  palindrome?(test_string)
end
  # then compare as before
p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false