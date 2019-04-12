def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

sample = "Hello World"
p spin_me(sample).object_id == sample.object_id # "olleh dlrow"

