# Collection of spelling blocks with two letters each
# Let's represtent that with an array of two element sub_arrs

# block_pile.each { |block| p block}

BLOCK_PILE = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(str)
  word = str.upcase
  BLOCK_PILE.none? { |block| word.count(block) >= 2 }
end

p block_word?('BATCH')
p block_word?('jest')