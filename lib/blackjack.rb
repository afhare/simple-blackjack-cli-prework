def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(number)
  prompt_user
  
  reply = get_user_input

  if reply == 'h'
    number += deal_card
    display_card_total(number)
  #elsif reply == "s"
    #display_card_total(number)
  else invalid_command
  end
  number
end

def invalid_command(answer)
  # code invalid_command here
  if answer != "s" || answer != "h"
    puts "Please enter a valid command."
    prompt_user
  end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round
  
  until total >=21 do
    total = hit?(total)
  end
  end_game(total)
end