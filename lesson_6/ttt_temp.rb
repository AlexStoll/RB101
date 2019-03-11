require 'pry'

FIRST = 'choose'
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES =   [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                  [[1, 5, 9], [3, 5, 7]]              # diagonals
choices = ['player', 'computer']

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system 'clear'
  puts "You're an #{PLAYER_MARKER}, computer is an #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

def number_of_rounds
  prompt "How many rounds would you like to play to?"
  rounds = gets.chomp.to_i
end

def initialize_scoreboard
  scoreboard = {"Player" => 0, "Computer" => 0}
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delimeter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimeter)
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil

  # offense
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, COMPUTER_MARKER)
      break if square
    end

  # defense first
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  # pick #5 if it's available
  if brd[5] == ' '
    square = 5
  end

  # just pick if no obvious moves
  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd[line[0]] == PLAYER_MARKER &&
       brd[line[1]] == PLAYER_MARKER &&
       brd[line[2]] == PLAYER_MARKER
       return 'Player'
    elsif brd[line[0]] == COMPUTER_MARKER &&
          brd[line[1]] == COMPUTER_MARKER &&
          brd[line[2]] == COMPUTER_MARKER
          return 'Computer'
    end
  end
  nil
end

def match_complete?(hsh, num)
  hsh["Player"] >= num ||
  hsh["Computer"] >= num
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def display_score(hsh)
  prompt "Player: #{hsh["Player"]}"
  prompt "Computer: #{hsh["Computer"]}"
end

def assign_first_player
  prompt "Who would you like to start? (player, computer, random)"
  answer = gets.chomp
  if answer == 'player' || answer == 'computer'
    FIRST = answer
  else FIRST = choices.sample
  end
end

# Game Starts Here ----

scoreboard = initialize_scoreboard
rounds = number_of_rounds
if FIRST == 'choose'
  prompt "Who would you like to start? (player, computer, random)."
  answer = gets.chomp
  if answer == "player" || answer == "computer"
    FIRST = answer
  else FIRST = choices.sample
  end
end

  # Round starts here
  loop do
    board = initialize_board
    loop do
      display_board(board)

      if FIRST == 'player'

      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)

      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)

      elsif FIRST == 'computer'

      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)

      display_board(board)
      
      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)

      end
    end

    display_board(board)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won that round."
      scoreboard[detect_winner(board)] += 1
      display_score(scoreboard)
    else
      prompt "It's a tie!"
    end

    if match_complete?(scoreboard, rounds)
      champ = scoreboard.select { |k,v| v == rounds}
                        .keys
      prompt "#{champ[0]} is the champion!"
      break
    end

    prompt "Keep playing? (y or n)"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end


  prompt "Thanks for playing, now go outside!"


