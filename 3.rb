# Write a method that
# Takes one argument, a positive integer
# Returns a list of digits in the number.

def digit_list(number)
  digits = number.to_s.split('') # converts to a string and splits
  digits.map {|item| item.to_i} # maps each string to an integer
end
p digit_list(120123)