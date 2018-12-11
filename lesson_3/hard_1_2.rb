greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings # informal greeting references the original
               # object, and is changed, so it modifies
               # the original object, too.