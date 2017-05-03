require 'json'
require_relative 'file_reader'

class JsonReader < FileReader #inherits FileReader file method
  
  def read
  p "Reading a JSON File"
  json_file = File.read(@file)
  contents = JSON.load(json_file)
  p contents
  end

end