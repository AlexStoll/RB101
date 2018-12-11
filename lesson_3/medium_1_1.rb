# Write a one line program that prints
# "The Flintstones Rock!" ten times, indented 1 space further each time
message = "The Flintstones Rock!"

# 10.times {puts message.prepend(' ')}

# from answer
10.times { |number| puts (' ' * number) + message}