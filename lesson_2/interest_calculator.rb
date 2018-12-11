# Create a mortgage calculator.
# 
# User Inputs:
# principal
# rate
# term

# With those
# calculate montly interest rate
# -- divide whole number rate by 100
# -- then by 12, or just APR/1200
# r = apr / 1200
# loan duration in months
# n = term * 12

# m = a * (r / (1 - (1 + r)**(-n)))
# m = montly payment
# a = loan amount
# r = montly interest rate
# n = duration in months

# get loan amount
puts ("==> Buying a house, eh? How much are you looking to finance?")
a = gets.chomp.to_i

# get APR
puts ("==> What's your interest rate? They're currently around 5 percent.")
apr = gets.chomp.to_i.to_f
r = apr / 1200

# get duration in years
puts ("==> Will this be a 15 year, 30 year, or some other duration loan?")
term = gets.chomp.to_i
n = term * 12

# return montly payment
m = a * (r / (1 - (1 + r)**(-n)))
m = m.round(2)

puts "It looks like your montly payment will be $#{m} per month."







