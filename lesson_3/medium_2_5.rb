def color_valid(color)
  color == "blue" || color == "green"
end

p color_valid('dog')
p color_valid("green")
p color_valid("blue")