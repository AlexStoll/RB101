# Count occurences of a given element in an array

# Iterate through the array
# Check if the word is in the results hash
# If it isn't: add the word to the hash
# If it is: add one to the words value

def count_occurences(words)
  results = {}
  words.each do |word|
    results.include?(word) ? results[word] += 1 : results[word] = 1
  end
  results
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

p count_occurences(vehicles)