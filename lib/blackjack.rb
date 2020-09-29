def welcome
  puts "Welcome to the Blackjack Table"
end


def deal_card
  card = rand(1...11)
end


def display_card_total(card_value)
  puts "Your cards add up to #{card_value}"
end


def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end


def get_user_input
  user_input = gets.chomp
end


def end_game(total_card_value)
  puts "Sorry, you hit #{total_card_value}. Thanks for playing!"
end


def initial_round
  first_hand = deal_card + deal_card
  display_card_total(first_hand)
  first_hand
end


def hit?(card)
  prompt_user
  input = get_user_input

  if input == "s"
    return card
  elsif input == "h"
    return card + deal_card
  else
    invalid_command
    hit?(card)
  end
end


def invalid_command
  puts "Please enter a valid command"
end


def runner
  welcome
  card_value = initial_round

  until card_value > 21 do
    card_value = hit?(card_value)
    display_card_total(card_value)
  end

  end_game(card_value)
end

    
