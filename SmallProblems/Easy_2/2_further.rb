# ask the user for the l x w of a room in meters
# display the area of that room in square meters
# display the area of that room in sqare feet

# 1 square meter == 10.7639 square feet
SQFEET_TO_SQCENTIMETERS = 929.03

SQMETERS_TO_SQFEET = 10.7639

def feet_to_inches(feet)
  feet * 12
end

# Ask the user for length and width in meters
puts "Enter the length of the room in feet:"
length_ft = gets.chomp.to_f

puts "Enter the width of the room in feet:"
width_ft = gets.chomp.to_f
# multiply those for area_square_meters
area_square_feet = (length_ft * width_ft).round(2)

area_square_inches = (feet_to_inches(length_ft) * feet_to_inches(width_ft)).round(2)

# multiply that result by the given value for area_square_feet
area_square_centimeters = area_square_feet * SQFEET_TO_SQCENTIMETERS
# present the user with the results
puts "The area of the room is #{area_square_feet} square feet, #{area_square_inches} square inches,"
puts "or #{area_square_centimeters} square centimeters."

