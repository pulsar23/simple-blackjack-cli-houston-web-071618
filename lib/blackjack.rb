def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  return card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
  return user_input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
  return sum
end

def hit?(current_total)
  prompt_user
  x = get_user_input
  if x == 'h'
    new_card = deal_card
    new_total = current_total + new_card
    return new_total
  elsif x == 's'
    return current_total
  else
    invalid_command
    prompt_user
    return current_total
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total_value = initial_round
  until total_value > 21 do
    new_total = hit?(total_value)
    display_card_total(new_total)
  end
  
end
    
