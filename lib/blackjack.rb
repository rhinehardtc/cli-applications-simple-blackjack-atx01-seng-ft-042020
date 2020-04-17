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
  gets.chomp
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
  get_user_input
  deal_card if get_user_input = 'h'
  if get_user_input != 'h' && get_user_input != 's'
    invalid_command
  end
  total
end

def invalid_command
  p 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
