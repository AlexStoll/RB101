# ask users name
puts "What is your name?"
name = gets.chomp
# if user input ends with !, yell back at user.
if name[-1] == ("!")
  puts "HEY #{name.chop!.upcase}. WHY SO MUCH ENTHUSIASM?!"
else
  puts "Hey #{name}, nice to meet you."
end
