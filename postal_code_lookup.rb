# Postal code dictionary
areas = {"Norwich" => "N0E1G0", "Glen" => "N0E1G0", "Tillsonburg" => "N4G5C4", "Woodstock" => "N4S3V9" }

# Prints out a list of city names
def display_city(hash)
  hash.each { |k, v| puts k}
end

# Returns the value
def get_postal(hash, key)
  hash[key]
end

# ----------------Start of Program----------------
loop do
  puts "Do you want to lookup a Postal Code ? (Y/N)"
  prompt = gets.chomp.downcase
  if prompt != 'y'
   break
  end
  puts "Which city would you like to look up the postal code for ?"
  display_city(areas)
  print "Enter your selection > "
  prompt = gets.chomp
  if areas.include?(prompt.capitalize)
    puts "The postal code for #{prompt.capitalize} is #{get_postal(areas, prompt.capitalize)} "
  else
    puts "I'm sorry #{prompt} is not in the postal code dictionary, please try again."  
  end
end