# get yahoo-finance gen to get stock prices
# based on yahoo-finance gem https://github.com/herval/yahoo-finance
# please see http://ruby-doc.org/core-2.3.0/IO.html#method-c-new-label-Open+Mode for file permissions

require "yahoo-finance"

class StockQuote
  
  def self.price_by_symbol(symbol)
    client = YahooFinance::Client.new
    data = client.quotes([symbol], [:open])
    data[0].open
  end
  
  def self.write_price_by_symbol(symbol, price)
    filename = "#{symbol}.csv" # makes a file based on below symbol
    todays_date = Time.now.strftime("%y-%m-%d") # setup nice date format
    File.open(filename, "a") do |file|
      file << "#{todays_date}, #{price}\n" # pushes these arguments to the file \n is new line
    end
  end
  
end