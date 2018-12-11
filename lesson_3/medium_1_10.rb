def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar(foo) # Whats this?

 bar("yes") # Despite the default parameter, return is always "yes"
 "no"