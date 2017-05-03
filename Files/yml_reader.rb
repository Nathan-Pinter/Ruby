require 'yaml'
require_relative 'file_reader'

class YmlReader < FileReader #inherits FileReader file method
  
  def read
    p "Reading a YML File"
    contents = YAML.load_file(@file)
    p contents
  end  
  
end