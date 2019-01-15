# Change dates in format 2016-06-17 or 2016/06/17 to 17.06.2016


def format_date(date)
  date.sub(/\A(\d\d\d\d)(-|\/)(\d\d)(-|\/)(\d\d)\z/, '\5.\3.\1')
end

p format_date('2016/06/17')
p format_date('2016-06-17')