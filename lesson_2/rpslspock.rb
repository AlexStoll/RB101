VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  Kernel.puts("=> #{message}")
end

matchup_hash = { 'rock' => ['scissors', 'lizard'],
                 'paper' => ['rock', 'spock'],
                 'scissors' => ['paper', 'lizard'],
                 'lizard' => ['spock', 'paper'],
                 'spock' => ['scissors', 'rock'] }

scoreboard = { 'Player' => 0, 'Computer' => 0 }

# evals to boolean, player1 being keys, player2 being the value - an array
def win?(input_hash, player1, player2)
  input_hash.fetch(player1).include?(player2)
end

def result(input_hash, player, computer)
  if win?(input_hash, player, computer)
    "You won!"
  elsif win?(input_hash, computer, player)
    "Computer won!"
  else
    "It's a tie."
  end
end

def add_score(scoreboard_hash, result)
  if result == "Computer won!"
    scoreboard_hash['Computer'] += 1
  elsif result == "You won!"
    scoreboard_hash['Player'] += 1
  end
end

# Main program starts here

loop do # Main loop
  prompt('How many wins would you like to play to?')
  wins_to_victory = gets.chomp.to_i

  loop do # Rounds loop
    choice = ''

    loop do
      prompt("choose one: #{VALID_CHOICES.join(', ')}")
      choice = Kernel.gets().chomp()

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample()

    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

    outcome = result(matchup_hash, choice, computer_choice)

    prompt(outcome)

    add_score(scoreboard, outcome)

    p scoreboard

    if scoreboard['Computer'] == wins_to_victory
      prompt("The computer won that round.")
      break
    elsif scoreboard['Player'] == wins_to_victory
      prompt("You've won the match!")
      break
    end

    prompt("Enter stop or no to exit early.")
    response = gets.chomp.to_s.downcase
    break if response.start_with?('s', 'n')
  end

  prompt("Another round? Enter 'yes' if so.")
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end
