# Problem

# Convert a minutes relative to midnight integer
# to a day and time. Can use the Date and Time
# classes

# Example
# time_and_day(-4321) == 'Thursday 01:29'


# Data

# Input is a positive or negative integer
# Output is 'Day HH:MM'


# Algorithm

# Code
def time_of_day(integer)
  midnight = Time.new(2018, 10, 21)
  second_diff = integer * 60
  (midnight +second_diff).strftime("%A %H:%M")
end

p time_of_day(-4321)