# Create a mortgage calculator.

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
puts "==> Buying a house, eh? How much are you looking to finance?"
puts "==> Please input whole dollar amounts, ommitting the $."

# Using loops to verify inputs, so we'll have to initialize those outside first.
a = ''

# Get amount and verify it's a number.

loop do
  a = gets.chomp.to_i
  if a.to_s.to_i == a
    break
  else
    puts "\nPlease input a whole dollar amount, ommitting the $ or decimals."
  end
end

# get APR
puts "\n==>What's your interest rate? They're currently around 5 percent."
puts "==> Enter 5 percent as '5', rather than 0.05"

apr = gets.chomp.to_f

# Convert that to a montly rate
r = apr / 1200

# Get duration in years
puts "\n==> Will this be a 15 year, 30 year, or some other duration loan?"
puts "==> Please input the duration only in whole numbers of years."
term = gets.chomp.to_i

# Convert that to a number of months.
n = term * 12

# Return the montly payment
m = a * (r / (1 - (1 + r)**-n))
m = m.round(2)

puts "\nIt looks like your montly payment will be $#{m} per month."
