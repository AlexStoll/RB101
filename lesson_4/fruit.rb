produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

# select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
# Select the key-value pairs where the value is 'Fruit'
# Iterate over the hash, adding k/v's where v is 'Fruit' to the new hash.
# Return a hash of selected pairs

# def select_fruit(list)
#  list.select {|item, type| type == 'Fruit'}
# end
 
# p select_fruit(produce)

def select_fruit(produce_list)
  produce_keys = produce_list.keys
  counter = 0
  selected_fruits = {}

  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == 'Fruit'
      selected_fruits[current_key] = current_value
    end

    counter += 1
  end

  selected_fruits
end

p select_fruit(produce)