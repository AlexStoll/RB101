# Take an array of arrays [[fruit, quantity], [fruit, quantity]]
# Return an array of the fruits * quantities

def buy_fruit(list)
  output = []
  list.each do |item|
    item[1].times { output << item[0] }
  end
  output
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]