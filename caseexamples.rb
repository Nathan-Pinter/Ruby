puts "Put in your exame score"
prompt = gets.chomp.to_i

result = case prompt
    when 0..40 then "You failed"
    when 41..60 then "You Passed"
    when 61..80 then "You Passed with merit"
    when 81..100 then "You are a genius"
    else "Sorry invalid score"
end
    
puts result