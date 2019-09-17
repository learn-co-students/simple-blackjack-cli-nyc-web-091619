def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(10)+1
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  total
end

def hit?(total)
  prompt_user
  answer = get_user_input
  if answer == "s"

  elsif answer == "h"
    total += deal_card
  else
    invalid_command
    prompt_user
    get_user_input
  end

  total

end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # Welcome the user
  welcome
  # Deal them their first two cards, i.e. their initial_round
  total = initial_round
  # Ask them if they want to hit or stay
  until total > 21 do
    update = hit?(total)
    if (update != total)
      display_card_total(update)
    end
    total = update
  end

  end_game(total)
  # If they want to stay, ask them again!
  # If they want to hit, deal another card and display the new total
  # If their card total exceeds 21, the game ends.

end
    
