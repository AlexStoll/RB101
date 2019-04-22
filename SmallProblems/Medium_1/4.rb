# 1000 lights problem

# bank of switches numbered 1 to n, initialy all are off
# n.times do |i|
# walk down toggling every switch where switch_number % (i + 1) == 0
# 
# Method with one argument - the total number of switches
# Returns an array identifying which lights are on after n reps
# So lights(5) == [1, 4]

# Algorithm
# Let's make a hash with keys 1..n and values 'off'
# create an array 1..n and zip to array ['off']n

def lights(n)
  lights = ((1..n).zip(['off'] * n)).to_h

  n.times do |i|
    lights.each do |bulb_number, status|
      if bulb_number % (i + 1) == 0
        status == 'off' ? lights[bulb_number] = 'on' : lights[bulb_number] = 'off'
      end
    end
  end

  lights.select { |bulb_number, status| status == 'on' }.keys
end

def lights_speed(n)
  output = []
  count = 1
  until (count ** 2) > n do
    output << count ** 2
    count += 1
  end
  output
end



# lights_speed(10000000000000) # 0.6 s
#p lights(10000) # 7.7 s