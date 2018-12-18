# tip calulator

# prompt for bill amount
puts "What's the bill?"
bill = gets.chomp.to_f

puts "What's the tip percentage (as a whole number)?"
tip_rate = (gets.chomp.to_f)/100
# prompt for tip rate

# compute the tip, display the tip and the full total
tip = (bill * tip_rate).round(2)

total = (tip + bill).round(2)

puts "The tip is $#{tip}"

puts "The total is $#{total}"