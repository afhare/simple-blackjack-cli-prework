def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(number)
  prompt_user
  reply = get_user_input

  if reply == "s"
  elsif reply == "h"
    number += deal_card
  elsif reply != "s" || reply!= "h"
  invalid_command
  end
  number
end

def invalid_command(answer)
  if answer != "s" || answer != "h"
    puts "Please enter a valid command."
    prompt_user
  end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  
  until total >=21 do
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end