print "What's your name? "
username = gets.chomp
greeting = "Hello #{username}"
username[-1] == '!' ? 
puts(greeting.upcase + " WHY ARE WE SCREAMING?") : puts(greeting + ".")