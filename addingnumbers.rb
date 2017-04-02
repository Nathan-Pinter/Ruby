def multiply(first, second)
    first.to_i * second.to_i
end

def divide(first, second)
    first.to_i / second.to_i
end

def subtract(first, second)
    first.to_i - second.to_i
end

def add(first, second)
    first.to_i + second.to_i
end
puts "Welcome to the calculator"
puts "What would you like to do ?"
puts "1)Multiply 2)Divide 3)Subtract 4)Add"
prompt = gets.chomp
puts "What would you like the first number to be ?"
first_number = gets.chomp
puts "What would you like the second number to be ?"
second_number = gets.chomp

if 
    prompt == "1"
    puts "You have chosen to Multiply #{first_number} with #{second_number}"
    puts "The first number Multiplied by the second number is : #{multiply(first_number, second_number)}"
elsif
    prompt == "2"
    puts "You have chosen to Divide #{first_number} with #{second_number}"
    puts "The first number Divided by the second number is : #{divide(first_number, second_number)}"
elsif
    prompt == "3"
    puts "You have chosen to Subtract #{first_number} with #{second_number}"
    puts "The first number Subtracted by the second number is : #{subtract(first_number, second_number)}"
elsif
    prompt == "4"
    puts "You have chosen to Add #{first_number} with #{second_number}"
    puts "The first number Added by the second number is : #{add(first_number, second_number)}"
else
    puts "You have chosen an invalid option"
end


