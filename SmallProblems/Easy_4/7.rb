# define string_to_integer
# can't use String#to_i, or (Integer())

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}


def string_to_integer(string)
  nums = string.chars.map { |character| DIGITS[character]}
  
  value = 0
  nums.each { |num| value = 10 * value + num }
end

string_to_integer('12345')