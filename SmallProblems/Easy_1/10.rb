# method that takes a positive integer and a boolean
# if true, bonus should be half the salary
# if false, bonus should be 0

def calculate_bonus(salary, boolean)
  boolean ? salary / 2 : 0
end

p calculate_bonus(2000, true)
p calculate_bonus(2000, false)