# Place a constant which dictates who moves first

# Create a current_player variable, which starts equal to FIRST_MOVE

# place_piece! method is just a combination of existing place methods
# use an if statement based on current_player to know which method to use



def place_piece!(board, current_player)
  if current_player == 'Computer'
    computer_places_piece!(brd)

  else
    player_places_piece!(board)
  end
end

def alternate_player!(current_player)
  current_player == 'Player' ? current_player = 'Computer' : current_player = 'Player'
end

p current_player = 'Player'

p alternate_player!(current_player)

p current_player

=begin
loop do
  display_board(board)
  place_piece!(board, current_player)
  current_player = alternate_player(current_player)
  break if someone_won?(board) || board_full?(board)
end
=end
