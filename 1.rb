# Repeat yourself

# Write a method that takes to arguments, string and int
# Prints the string as many times as the int says

def repeat(string, integer)
  integer.times do
    puts string 
  end
end



repeat('Hello', 4)