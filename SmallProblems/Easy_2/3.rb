print "What's the bill? "
bill = gets.chomp.to_f

print "What's the tip percentage? "
percentage = gets.chomp.to_f

tip = bill * (percentage / 100)
total = format("%.2f", (bill + tip))

puts "The tip is $#{format("%.2f", tip)}"
puts "The total is $#{total}"