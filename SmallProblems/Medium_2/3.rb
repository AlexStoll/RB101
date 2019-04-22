def letter_percentages(string)
  percents = {lowercase: 0, uppercase: 0, neither: 0}
  length = string.length.to_f
  lowercase, uppercase = string.count('a-z'), string.count('A-Z')
  percents[:lowercase] = (lowercase / length) * 100
  percents[:uppercase] = (uppercase / length) * 100
  percents[:neither] = 100 - (percents[:lowercase] + percents[:uppercase])


  p percents
end



p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
