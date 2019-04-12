SQ_METERS_TO_SQ_FEET = 10.7639

puts "Enter the length in m's:"
length = gets.chomp.to_i
puts "Enter the width in m's:"
width = gets.chomp.to_i

area_sq_meters = (length * width).round(2)
area_sq_feet = (area_sq_meters * SQ_METERS_TO_SQ_FEET).round(2)

puts "The area of the room is #{format("%.2f", area_sq_meters)} square meters #{format("%.2f", area_sq_feet)} square feet)."