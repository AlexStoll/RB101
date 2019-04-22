# Collection of spelling blocks with two letters each

# Iterate through each character
# For each character, iterate over blocks
# If a given block includes char, delete it.

  BLOCKS = ['BO', 'XK', 'DQ', 'CP', 'NA', 'GT', 'RE',
           'FS', 'JW', 'HU', 'VI', 'LY', 'ZM']

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

p block_word?('BATCH')# == true
p block_word?('BUTCH')# == false
p block_word?('jest')# == true