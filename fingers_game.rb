computer_fingers = rand(6)

puts "Guess how many fingers i'm holding up"
guess = gets.chomp.to_i
puts "I had #{computer_fingers} held out"
puts "you guessed correct !" if computer_fingers == guess

