name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# These both print BOB. This is because save_name, and name
# both point to the same string. When it's destructively modified
# rather than reassigned, both variables point to the new value.