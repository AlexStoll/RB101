# Write a method that counts the occurences of each element in an array

# Print each element alongside the number of occurences

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def display_item_and_count(hsh)
  hsh.each do |item, count|
    puts "#{item} => #{count}"
  end
end

def count_occurrences(arr)
  counts = {}

  arr.each do |item|
    counts[item] = arr.count(item)
  end
  
  display_item_and_count(counts)
end


count_occurrences(vehicles)