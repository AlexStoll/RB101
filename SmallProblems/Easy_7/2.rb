# take a string, return a hash containing 3 entries
# one is num of lowercase letters
# one is num of uppercase letters
# one is num of everything else

def letter_case_count(string)
  count_hash = {lowercase: 0, uppercase: 0, neither: 0}
  
  count_hash[:lowercase] = string.count('a-z')
  count_hash[:uppercase] = string.count('A-Z')
  count_hash[:neither] = (string.length - (count_hash[:lowercase] + count_hash[:uppercase]))
  count_hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
