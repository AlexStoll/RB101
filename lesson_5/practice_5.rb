# Find total age of male members of family

munsters = {
  "Herman" =>  { "age" => 32,  "gender" => "male" },
  "Lily" =>    { "age" => 30,  "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" =>   { "age" => 10,  "gender" => "male" },
  "Marilyn" => { "age" => 23,  "gender" => "female"}
}
total_age = 0

munsters.each_pair do |member, info|
  if info["gender"] == "male"
    total_age += info["age"]
  end
end


p total_age
