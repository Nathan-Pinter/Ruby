#This is a class file to go with file_reader.rb
#When running file_operator.rb you must pass in a filename
#example: ruby file_operator.rb sample.txt OR ruby file_operator.rb sample.csv
#This will read sample.txt and display it on the screen. 
#ARGV[0] is passed in when you run "ruby file_operator.rb sample.txt"
#This runs the class file

#require_relative jumps to the other files and includes them in file_operator
require_relative "file_reader" 
require_relative "csv_reader"
require_relative "yml_reader"
require_relative 'json_reader'

#---------------------------Old test code----------------------
#FileReader.new(ARGV[0]).read #this is stringed together just reads the file
#CsvReader.new(ARGV[0]).read
#YmlReader.new(ARGV[0]).read
#JsonReader.new(ARGV[0]).read
#--------------------------------------------------------------

FILENAME = ARGV[0] #Sets a constant, instead of having to update every ARGV[0] you only have to update this FILENAME


def file_extension(filename)
  filename.split('.').last #Splits the filename where . is and only using after . example sample.txt only using txt
end

def reader_class
  ext = file_extension(FILENAME)
  return CsvReader if ext == 'csv'
  return YmlReader if ext == 'yml'
  return JsonReader if ext == 'json'
  FileReader
end

reader_class.new(FILENAME).read