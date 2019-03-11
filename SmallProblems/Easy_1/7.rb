# takes a positive integer, and returns a string
# of 1's and 0's, starting with one, of the length of the
# integer

def stringy(num, option = 1)
  output = ""

  if option == 1
    num.times do |index|
      number = index.even? ? '1' : '0'
      output << number
    end
    
  elsif option == 0
    num.times do |index|
      number = index.even? ? '0' : '1'
      output << number
    end
  end
  output
end


puts stringy(7, 1)
puts stringy(7, 0)