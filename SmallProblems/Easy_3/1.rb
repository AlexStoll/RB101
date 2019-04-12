puts "Enter a list of five numbers, then a sixth which will be checked against the list."
list = []

puts "1st"
list << gets.chomp.to_i

puts "2nd"
list << gets.chomp.to_i

puts "3rd"
list << gets.chomp.to_i

puts "4th"
list << gets.chomp.to_i

puts "5th"
list << gets.chomp.to_i

puts "6th"
last = gets.chomp.to_i

list.include?(last) ? (puts "#{last} apprears in #{list}.") : (puts "#{last} does not appear in #{list}")