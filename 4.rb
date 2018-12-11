# Write a method that counts the occurences of each element in an array

# Print each element alongside the number of occurences

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurences(list)
  occurences = {}
  
  list.each do |word|
    word[element] = array.count(element)
  end

  occurences.each do |word, count|
    puts "#{word} => #{count}"
  end
end

count_occurences(vehicles)