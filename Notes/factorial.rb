# Recursive solution

def fact_recursive(num)
  if num == 1
    1
  else
    num * fact_recursive(num - 1)
  end
end


# Iterative solution

def fact_iterative(num)
  figure = 1
  for i in (1..num)
    figure = figure * i
  end
  figure
end

p fact_recursive(4)
p fact_iterative(4)