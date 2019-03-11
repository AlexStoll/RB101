# Order the array of hashes based on the year of publication, ascending.

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby',              author: 'F. Scott Fitzgerald',    published: '1925'},
  {title: 'War and Peace',                 author: 'Leo Tolstoy',            published: '1869'},
  {title: 'Ulysses',                       author: 'James Joyce',            published: '1922'}
]

# sort_by
sorted = books.sort_by do |hsh|
    hsh[:published].to_i
  end

p sorted
