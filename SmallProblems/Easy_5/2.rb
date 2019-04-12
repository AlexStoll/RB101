# Minutes after midnight
# Take a number (number of minutes after or before midnight)
# Return in 24 hour hh:mm format

def time_of_day(minutes)
  minutes = minutes % 1440
  hour, minute = minutes.divmod(60)
  "#{format("%.2d", hour)}:#{format("%.2d", minute)}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"


