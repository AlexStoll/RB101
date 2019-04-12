# repeat('Hello', 3)
# => Hello /n Hello /n Hello /n

def repeat(string, number)
  number.times {puts string}
end

repeat('A', 3)