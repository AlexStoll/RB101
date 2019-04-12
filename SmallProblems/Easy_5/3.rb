MINS_PER_DAY = 1440
MINS_PER_HOUR = 60

def after_midnight(time)
  hours, minutes = time[0..1].to_i, time [3..4].to_i
  total_minutes = ((hours * MINS_PER_HOUR) + minutes) % MINS_PER_DAY
end

def before_midnight(time)
  minutes_after = after_midnight(time)
  minutes_before = MINS_PER_DAY - after_midnight(time)
  minutes_before = 0 if minutes_after % MINS_PER_DAY == 0
  
  minutes_before
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0