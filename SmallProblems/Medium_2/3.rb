


def letter_percentages(string)
  percentage_hash = {}

  uppercase, lowercase = string.count("A-Z").to_f, string.count("a-z").to_f
  
  percentage_hash[:lowercase] = ((lowercase / string.size) * 100).round(1)
  percentage_hash[:uppercase] = ((uppercase / string.size) * 100).round(1)
  percentage_hash[:neither] = 100 - (percentage_hash[:lowercase] + percentage_hash[:uppercase])
  
  percentage_hash
end

p letter_percentages('abCdef 123')
p letter_percentages('AbCd +Ef')
p letter_percentages('123')