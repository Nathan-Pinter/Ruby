puts "Welcome to the jungle, we have ___ and ___"
puts "What should be the first word?"
first_word = gets.chomp
puts "What should be the second word?"
second_word = gets.chomp
puts "The completed verse is 'Welcome to the jungle, we have #{first_word} and #{second_word}'"
verse = "'Welcome to the jungle, we have #{first_word} and #{second_word}'"
puts "Your song has #{verse.length} characters in it including spaces"
puts "The song reversed sounds funny, but here it is. #{verse.reverse}"