# array contains elements which will comprise a name
# hash is {title: 'Senior', occupation: 'Vice President'}


def greetings(arr, hsh)
  name = ""
  arr.each do |x|
    name << x + ' '
  end
  name.chop!

  "Hello, #{name}! I've never met a #{hsh[:title]} #{hsh[:occupation]} before!"
end



p greetings(['Alex', 'M', 'Stoll'], {title: 'Senior', occupation: 'Interloper'})