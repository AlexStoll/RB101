# write a method xor
# returns true if only one of the two arguments is truthy

def xor(arg1, arg2)
  if arg1 && !arg2
    true
  elsif arg2 && !arg1
    true
  else
    false
  end
end

p xor(5.even?, 4.even?) == true
p xor(5.odd?, 4.odd?) == true
p xor(5.odd?, 4.even?) == false
p xor(5.even?, 4.odd?) == false