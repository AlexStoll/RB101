ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# see if "Herman" is present in the Hash

p ages.include?("Herman")

p ages.has_key?("Herman")
p ages.key?("Herman")
# These two are aliases

p ages.any? {|key, value| key == "Herman"}


# Bonus: give two more methods
