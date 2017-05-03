1.upto(100) do |number|
  line = ""
  line << "Fizz" if number % 3 == 0
  line << "Buzz" if number % 5 == 0
  puts line.empty? ? number : line
end
