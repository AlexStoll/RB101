def real_palindrome?(str)
  str = str.downcase.delete('^a-z0-9')
  str == str.reverse

end

p real_palindrome?('dog cat, house')
p real_palindrome?('race car')