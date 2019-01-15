# Given the hash of :contries => capital cities

# Return new hash of key/values where country starts with 'B'

countries_and_capitals = {
  'France' => 'Paris',
  'Belgium' => 'Brussels',
  'Morocco' => 'Rabat',
  'Barbados' => 'Bridgetown',
  'Peru' => 'Lima',
  'Bolivia' => 'La Paz',
  'Brazil' => 'Brasilia'
}

p countries_and_capitals.each_with_object({}) do |(k, v), obj|
  obj[k] = v if k.chr == 'B'
end

