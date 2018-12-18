# Repeat yourself

# Write a method that takes two arguments, string and int
# Prints the string as many times as the int says

def repeat(string, number)
  number.times do
    puts string
  end
end

repeat('Hello', 3)