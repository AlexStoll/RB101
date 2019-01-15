# Problem

# Take an integer, representing the number of minutes
# before or after midnight, and convert to 24:60 time

# Example

# time_of_day(0) == '00:00'
# time_of_day(3000) == '02:00'
# time_of_day(-4231) == '01:29'


# Data Structures

# Integer as an input, string 'HH:MM' as the output

# Algorithm

# Input divided by 60, this gives hours, remainder is minutes
# Display as '#{hours}:#{minutes}'
# Figure out negatives later

# Code 'er up

def time_of_day(input)
  input = input % 1440
  hours = input.to_i / 60
  minutes = input.to_i % 60
  format('%02d:%02d', hours, minutes)
end

p time_of_day(-1437)