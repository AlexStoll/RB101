# Takes array and hash
# array contains 2+ elements making a name
# hash contains :title and :occupation keys
# greet person with title

person = ['Alfred', 'P', 'Sloan']
job = {title: 'swell', occupation: 'guy'}

def greetings(name_array, title_hash)
  name_str = name_array.join(' ')
  title_str = "#{title_hash[:title]} #{title_hash[:occupation]}"

  "Hey there #{name_str}, you're a #{title_str}?"
end


p greetings(person, job)
