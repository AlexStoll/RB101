famous_words = "seven years ago..."

# Show two ways to prepend "Four score and "

famous_words = "Four score and " + famous_words
# or
famous_words.prepend("Four score and ")
# or
"Four score and " << famous_words

p famous_words