card_details = [{ace_of_spades: {numeric_value: 1, value: 11}},
                {king_of_spades: {numeric_value: 2, value: 10}},
                {queen_of_spades: {numeric_value: 3, value: 10}},
                {jack_of_spades: {numeric_value: 4, value: 10}},
                {spades_10: {numeric_value: 5, value: 10}},
                {spades_9: {numeric_value: 6, value: 9}},
                {spades_8: {numeric_value: 7, value: 8}},
                {spades_7: {numeric_value: 8, value: 7}},
                {spades_6: {numeric_value: 9, value: 6}},
                {spades_5: {numeric_value: 10, value: 5}},
                {spades_4: {numeric_value: 11, value: 4}},
                {spades_3: {numeric_value: 12, value: 3}},
                {spades_2: {numeric_value: 13, value: 2}},
]

#return the value of a card given the numeric value
#take hash, card
def get_card_value(card_details, card)
  card_details.each do |name|
    name.each do |key, value|
      new_value = value[:numeric_value]
      return value[:value] if new_value == card 
    end
  end
end

def get_card_type(card_details, numeric_value)
  card_details.each do |name|
    name.each do |key, value|
      new_value = value[:numeric_value]
      return key if new_value == numeric_value
    end
  end
end

def hand_value(card_details, card1, card2)
  hand_value1 = get_card_value(card_details, card1)
  hand_value2 = get_card_value(card_details, card2)
  hand_value1 + hand_value2
end

#-------------Start of Program-----------------

loop do 
  print "Do you want to play Black Jack ? (Y/N) > "
  prompt = gets.chomp.downcase
  if prompt != 'y'
    break
  end
  deck = (1..13).to_a.shuffle!
  puts " "

  player_card_1 = deck.pop
  computer_card_1 = deck.pop
  player_card_2 = deck.pop
  computer_card_2 = deck.pop

  puts"Player is holding #{get_card_type(card_details, player_card_1)} and #{get_card_type(card_details, player_card_2)} and value is #{hand_value(card_details, player_card_1, player_card_2)}"
  puts "Dealer is holding #{get_card_type(card_details, computer_card_1)} and #{get_card_type(card_details, computer_card_2)} and value is #{hand_value(card_details, computer_card_1, computer_card_2)}"
  puts " "
  if hand_value(card_details, player_card_1, player_card_2) > hand_value(card_details, computer_card_1, computer_card_2)
    puts "Congratulations you beat the house"
    puts " "
  else puts "Sorry, you have lost. Please try again"
    puts " "
  end
end

