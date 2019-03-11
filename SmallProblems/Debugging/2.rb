

def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

p shout_out_to('you') # expected: 'HEY YOU'

