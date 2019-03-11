# 21 game

# To - Do List

# Constants

SUITS = ['c', 's', 'd', 'h']
VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
FACE_CARDS = ['J', 'Q', 'K']

# Methods:

def prompt(text)
  puts "=>  " + text
end

def initialize_deck
  SUITS.product(VALUES).shuffle
  # deck[0] is suit
  # deck[1] is value
end


def total(hand)
  # accepts a hand, creates a new array of the values
  values = []
  hand.each { |card| values.push(card[1]) }
  # returns a number value for cards in a hand
  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif FACE_CARDS.include?(value)
      sum += 10
    else
      sum += value
    end
  end
  # converting face card values
  # special case for Aces
  values.select { |value| value == "A"}.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def busted?(hand)
  total(hand) > 21
end

def detect_result(dealer_hand, player_hand)
  dealer_score = total(dealer_hand)
  player_score = total(player_hand)
  
  if player_score > 21
    'player busted'
  elsif dealer_score > 21
    'dealer busted'
  elsif dealer_score > player_score
    'dealer'
  elsif dealer_score < player_score
    'player'
  else
    'tie'
  end
end

def display_result(dealer_hand, player_hand)
  system 'clear'
  prompt "Dealer's hand: #{dealer_hand} => #{total(dealer_hand)}"
  prompt "Your hand: #{player_hand} => #{total(player_hand)}"
  case detect_result(dealer_hand, player_hand)
  when 'player busted'
    prompt "You've busted, dealer wins"
  when 'dealer busted'
    prompt "The dealer busted, you've won."
  when 'player'
    prompt "You've won the hand."
  when 'dealer'
    prompt "The dealer has won this round."
  when 'tie'
    prompt "It's a draw."
  end
end

def play_again?
  prompt("Would you like to play another hand?")
  answer = gets.chomp.downcase
  answer == 'y'
end




######### Game logic starts here

prompt ("Welcome to Alex's 21")

loop do
  deck = initialize_deck
  player_hand = []
  dealer_hand = []

  # deal some cards
  2.times do
    player_hand << deck.pop
    dealer_hand << deck.pop
  end


  # player's turn
  loop do
    system 'clear'
    prompt "Dealer has a #{dealer_hand[0]} and a ..."
    prompt "Your hand: #{player_hand} => #{total(player_hand)}"
    prompt "Hit or stay? ('h', or 's')"
    answer = gets.chomp.downcase
    if answer == 'h'
      player_hand << deck.pop
    end

    break if busted?(player_hand) || answer == 's'
  end

  # if player busts, display result and end hand
  if busted?(player_hand)
    display_result(dealer_hand, player_hand)
  end

  # dealer hits until 17 or greater
  until total(dealer_hand) >= 17
      dealer_hand << deck.pop
  end

  if busted?(dealer_hand)
    display_result(dealer_hand, player_hand)
  end

  # if neither player has busted, just compare and display result
  if !busted?(dealer_hand) && !busted?(player_hand)
    display_result(dealer_hand, player_hand)
  end

  break unless play_again?
end







