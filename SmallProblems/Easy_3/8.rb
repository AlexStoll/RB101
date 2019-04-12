def palindrome?(str_arr)
  str_arr == str_arr.reverse
end

p palindrome?([1, 2, 3, 2, 1]) == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true