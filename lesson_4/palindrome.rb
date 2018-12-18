# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

# -----------------------------------------------------------------------

# Algorithm:
#  - initialize a result variable to an empty array
#  - create an array named substring_arr that contains all of the
#    substrings of the input string that are at least 2 characters long.
#  - loop through the words in the substring_arr array.
#  - if the word is a palindrome, append it to the result
#    array
#  - return the result array

# Algorithm for substring_arr
# - create an empty array called `result` that will contain all
#   the required substrings
# - initialize variable start_substring_idx and assign 0 to it.
# - initialize variable end_substring_idx and assign value of
#   first_letter_idx + 1 to it.
# - Enter loop which will break when start_substring_idx is equal
#     to str.size - 1
#   - Within that loop enter another loop that will break if
#     end_substring_idx is equal to str.size
#     - append to the result array part of the string from
#       start_substring_idx to end_substring_idx
#     - increment `end_substring_idx` by 1.
#   - end the inner loop
#   - increment `start_substring_idx` by 1.
#   - reassign `end_substring_idx` to `start_substring_idx += 1`
# - end outer loop
# - return `result` array

def substrings(string)
  substrings = []
  start_substring_idx = 0
  end_substring_idx = start_substring_idx + 1
  loop do 
    break if start_substring_idx == string.size - 1 # Stops a second to last char.
    loop do
      break if end_substring_idx == string.size # Stops at last char
      substrings << string[start_substring_idx..end_substring_idx]
      end_substring_idx += 1
    end
    start_substring_idx += 1
    end_substring_idx = start_substring_idx + 1
  end
  substrings
end

def palindrome?(string)
  string == string.reverse
end

def palindrome_substrings(string)
  result = []
  substrings_arr = substrings(string)
  substrings_arr.each do |substring|
    result << substring if palindrome?(substring)
  end
  result
end

sample = "A long walk with mom bbobb and racecar."

p palindrome_substrings(sample)

















