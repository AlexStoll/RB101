def buy_fruit(arr)
  output = []
  arr.each do |item|
    item[1].times {|_| output << item[0]}
  end
  output
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])