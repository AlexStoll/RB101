# write a method xor
# returns true if only one of the two arguments is truthy

def xor?(boo1, boo2)
  (boo1 && !boo2) || (boo2 && !boo1)
end


p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
