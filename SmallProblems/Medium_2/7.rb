require 'Date'

def friday_13th(year)
  unlucky_fridays = 0
  (1..365).each do |day|
    if Date.ordinal(year, day).friday? && Date.ordinal(year, day).mday == 13
     unlucky_fridays += 1
    end
  end
  unlucky_fridays
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2