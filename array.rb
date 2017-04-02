input = Array.new

#method to reverse array
def reverse(answer)
    puts "Here is the array backwards"
    puts answer.reverse
end

#method to shuffle array
def shuffle(answer)
    puts "Here is the array shuffled"
    puts answer.shuffle
end

def manipulate(input)
    puts "How would you like to manipulate the array ?"
    puts "1)Rerverse order 2)Shuffled order"
    prompt = gets.chomp
    if 
        prompt == "1"
        puts "Here is your array #{input}"
        puts reverse(input)
    elsif 
        prompt == "2"
        puts "Here is your array #{input}"
        puts shuffle(input)
    else
        puts "you have chosen a wrong input"
        puts "Please try again"
        puts " "
        manipulate(input)
    end
end
    
#-----------------------Starting of program-------------------------
puts "Welcome to the Array Manipulator"
puts "Please enter 3 names"

3.times do
    input.push(gets.chomp)
end

puts "Thank you, Here is the names in the array"
puts input
puts ""
manipulate(input)