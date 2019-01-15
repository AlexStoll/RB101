# Without modifying original array
# use map to return a new array identical in structure
# with each integer incremented by 1

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
  new_hash = {}
  hsh.each do |key, value|
    new_hash[key] = value + 1
  end
  p new_hash
end
