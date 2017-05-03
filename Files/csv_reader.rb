require 'csv'
require_relative 'file_reader'

class CsvReader < FileReader #inherits FileReader file method

  def read
    p "Reading a CSV File"
    contents = CSV.read(@file)
    p contents
  end  
end