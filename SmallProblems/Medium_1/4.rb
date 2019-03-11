# 1000 lights problem

# lights toggled on each pass
# pass 1: 1,  2, 3,   4,  5,  6
# pass 2: 2,  4, 6,   8, 10, 12
# pass 3: 3,  6, 9,  12, 15, 18
# pass 4: 4,  8, 12, 16, 20, 24
# pass 5: 5, 10, 15, 20, 25, 30

# so make an array for the number of switches
# make a counter for which pass you're on
# multiply the switches array by the pass you're on
# that's the switches to flip

# lights hash
def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |num| lights[num] = "off" }
  lights
end

# this returns the list of lights which are on
def on_lights(lights)
  lights.select { |position, state| state == "on"}.keys
end

# toggle nth light in the hash
def toggle_every_nth_light(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = (state == "off") ? "on" : "off"
    end
  end
end

# Full program for n number of lights
def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light(lights, iteration_number)
  end

  on_lights(lights)
end

p toggle_lights(1000)