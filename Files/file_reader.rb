#This is a class file to go with file_operator.rb
#When running file_operator.rb you must pass in a txt file
#example: ruby file_operator.rb sample.txt
#This will ready sample.txt and display it on the screen. 

class FileReader
  attr_accessor :file 
  
  def initialize (file)
    @file = file 
  end
  
  def read
    puts "Reading a file using simple file reader"
    
    contents = File.read(@file)
    puts contents
  end
end
