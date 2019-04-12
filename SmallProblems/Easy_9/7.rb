# Take 'first_name last_name' as a string
# Return a string 'last_name, first_name'

# split string on the space
# use string interpolation and access the array at [1] then [0]

def swap_name(string)
  "#{string.split[1]}, #{string.split[0]}"
end

p swap_name('John Hamilton')
