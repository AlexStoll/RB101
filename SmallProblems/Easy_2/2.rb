# ask the user for the l x w of a room in meters
# display the area of that room in square meters
# display the area of that room in sqare feet

# 1 square meter == 10.7639 square feet
SQMETERS_TO_SQFEET = 10.7639
# Ask the user for length and width in meters
puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f
# multiply those for area_square_meters
area_square_meters = (length * width).round(2)
# multiply that result by the given value for area_square_feet
area_square_feet = (area_square_meters * SQMETERS_TO_SQFEET).round(2)
# present the user with the results
puts "The area of the room is #{area_square_meters} square meters (#{area_square_feet} square feet)."