# Problem

# Take a time HH:MM and convert to hours before
# and after midnight

# Examples

# after_midnight('00:00') == 0
# after_midnight('12:34') == 754

# Data

# An input string, need to get into hours and minutes
# variables. Get total minutes.

# Algorithm

# hh:mm to hours = hh, minutes = mm
# minutes = HH * 60 + MM

# Code

def after_midnight(string)
  hours = string[0, 2].to_i
  minutes = string[3, 2].to_i
  minutes = (hours * 60 + minutes) % 1440
  minutes
end

def before_midnight(string)
  minutes = 1440 - after_midnight(string)
  minutes = 0 if minutes == 1440
  minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
