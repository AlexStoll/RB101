# find palindromes
# this time case-insensitive, ignoring non-letters
def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(string)
  # modify to downcase, and remove non-letters, then feed to palindrome?
  clean_string = string.downcase.delete('^a-z0-9')
  palindrome?(clean_string)
end

p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false