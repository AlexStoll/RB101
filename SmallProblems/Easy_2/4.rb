print "What is your age? "
current_age = gets.chomp.to_i

print "When could you retire? "
retirement_age = gets.chomp.to_i

year = Time.now.year
work_years = retirement_age - current_age
retirement_year = year.to_i + work_years

puts "It's #{year}, you're planning to retire in #{retirement_year}."
puts "You have #{work_years} years of work to do until then, so enjoy them!"