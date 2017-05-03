require "csv"

class StockQuoteAnalyzer
  
  def self.symbol_lookup(symbol)
    begin
      CSV.read("#{symbol}.csv")
    rescue StandardError => e
      puts e
    end
  end
  
  def self.average_price(symbol)
    quotes = symbol_lookup(symbol)
    prices = quotes.map do |quote|
      quote[1].to_f
    end
    analysis = prices.inject(:+) / prices.length
    puts analysis
  end
  
  def self.highest_price(symbol)
    quotes = symbol_lookup(symbol)
    prices = quotes.map do |quote|
      quote[1].to_f
    end
    puts prices.max
  end
  
  def self.lowest_price(symbol)
    quotes = symbol_lookup(symbol)
    prices = quotes.map do |quote|
      quote[1].to_f
    end
    puts prices.min
  end
  
end

StockQuoteAnalyzer.lowest_price("AAPL")