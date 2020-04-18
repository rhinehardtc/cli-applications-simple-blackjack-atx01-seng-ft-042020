require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(number)
  if number > 21
    puts "Sorry, you hit #{number}. Thanks for playing!"
  end
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == 'h'
    total += deal_card
  elsif input == 's'
    total
  else
    invalid_command
    hit?(total)
  end
  total
end

def invalid_command
  puts 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  until display_card_total.number > 21
    hit?()
  end
  end_game
end
    
