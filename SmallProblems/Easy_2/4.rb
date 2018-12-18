current_year = Time.new.year


# get users age
puts "What is your age?"
age = gets.chomp.to_i

# get retirement age
puts "At what age can you retire?"
retirement_age = gets.chomp.to_i

career_length = (retirement_age - age)
retirement_year = (career_length + current_year)

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "Only #{career_length} years to go!"