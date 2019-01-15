# Problem

# Take float (0.0...360.0)
# Covert to an angle in degrees, minutes, seconds
# Use ° to represent degrees, ' for minutes, " for seconds
# A degree has 60 minutes a minute 60 seconds

# Examples

# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")

# Data

# Input as a float or integer

# Output is a concatenated string of the degrees,
# minutes, and seconds, integers

# Algorithm

# degrees = angle.to_i
# => if angle = 360, degrees = 0

# minutes = ((angle % 1) * 60).to_i

# seconds = ((((angle % 1)) * 60) % 1).to_i 


# Code
=begin


def dms(angle)
  degrees = angle.to_i
  minutes = ((angle % 1) * 60).to_i
  seconds = ((((angle % 1)) * 60) % 1).to_i

  "#{degrees} #{minutes} #{seconds}"
end 

p dms(30)
p dms(254.6)
=end

DEGREE = "\xC2\xB0" # this is just the ° character

def dms(angle)
  total_seconds = (angle * 360).round
  degrees, remaining_seconds = total_seconds.divmod(360)
  minutes, seconds = remaining_seconds.divmod(60)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

puts dms(240)
puts dms(240.45)
puts dms(450)



