# takes a string
# returns a string with staggered capitalization
# every other char counts, but only letters are capitalized

# use a counter and iterate over the string with it

def staggered_case(string)
  counter = 0
  result = ""
  loop do
      if counter.even?
      result << string[counter].upcase
      else
      result << string[counter].downcase
      end
      counter += 1
      break if counter >= string.size 
  end
  result
end

p staggered_case('dog and-Cat')