puts "Put in a choice of 1 or 2"
prompt = gets.chomp

result = case prompt
    when "1" then "Multiply"
    when "2" then "Divide"
    else "Sorry wrong choice"
end
    
puts result