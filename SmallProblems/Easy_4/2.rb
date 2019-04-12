# Takes a year and returns the century

def century(year)
  century = (((year - 1) / 100) + 1).to_s
  case century[-1]
    when '0' then century << 'th'
    when '1' then century << 'st'
    when '2' then century << 'nd'
    when '3' then century << 'rd'
    else century << 'th'
  end
  p century
  if century[-3..-4] == ('11' || '12' || '13')
    then century[-1..-2] = 'th'
  end
  p century
end

p century(2000)
p century(2001)
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

