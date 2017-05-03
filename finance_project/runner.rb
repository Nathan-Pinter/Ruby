#require_relative "stock_quote"
require_relative "historical_stock_quote"

#def stock_price_selector(*symbol_array) # *symbol_array is a splat method, which allows you to pass in as many elements as you wish. Putting each into array.
#  symbol_array.each do |symbol|
#    stock_price = StockQuote.price_by_symbol(symbol)
#    stock_written = StockQuote.write_price_by_symbol(symbol, stock_price)
#  end
#end

#stock_price_selector("AAPL", "GOOGL", "TSLA")

#puts HistoricalStockQuote.historical_price("MSFT")
#HistoricalStockQuote.write_price_by_symbol("MSFT")

def stock_price_selector(*symbol_array)
  symbol_array.each do |symbol|
    stock_written = HistoricalStockQuote.write_price_by_symbol(symbol)
  end
end

stock_price_selector("AAPL", "GOOGL", "TSLA")

