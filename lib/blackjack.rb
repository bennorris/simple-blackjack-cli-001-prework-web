def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1...11)
end

def display_card_total(x)
  total = 0
  sum = total + x
  puts "Your cards add up to #{sum}"

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
  firsthand = deal_card + deal_card
  display_card_total(firsthand)
  return firsthand
end

def hit?(current_total)
  prompt_user
  input = get_user_input
  if input == "h"
    current_total = current_total + deal_card
  elsif input == "s"
    return current_total
    prompt_user
  else invalid_command
    prompt_user
  end
end



def invalid_command
  puts "Aw, come on now. It has to be 'h' or 's'!"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  count = initial_round
  until count > 21 do
  count=hit?(count)
  display_card_total(count)
  end
end_game(count)
end
