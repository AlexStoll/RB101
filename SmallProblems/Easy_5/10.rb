def print_in_box(message)
horizontal = "+#{'-' * (message.size + 2)}+"
spacer = "|#{' ' * (message.size + 2)}|"
puts horizontal
puts spacer
puts "| #{message} |"
puts spacer
puts horizontal

end

print_in_box('To boldly go where no one has gone before.')