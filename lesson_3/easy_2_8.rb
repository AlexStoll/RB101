advice = "Few things in life are as important as house training your pet dinosaur."

# remove starting from house

# advice.slice!("Few things in life are as important as ")
# better from answer
advice.slice!(0, advice.index('house'))
p advice