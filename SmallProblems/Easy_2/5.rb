# ask users name
puts "What is your name?"
name = gets.chomp
# if user input ends with !, yell back at user.
if name.end_with?("!")
  name.delete!("!").upcase!
  puts "HEY #{name}. WHY SO MUCH ENTHUSIASM?!"
else
  puts "Hey #{name}, nice to meet you."
end
