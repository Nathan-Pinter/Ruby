FILENAME = ARGV[0]
WORD_TO_COUNT = ARGV[1]

def count_words
  contents = File.read(FILENAME)
  # remove punctuation and newlines, and convert all string to lowercase
  contents = contents.gsub(/[^a-z0-9\s]/i, ' ')
  contents = contents.gsub(/\n/, ' ')
  contents.downcase!
  
  words = contents.split(' ')
  count = words.count(WORD_TO_COUNT.downcase)
  p "The number of '#{WORD_TO_COUNT}' appears in #{FILENAME} is #{count}."
end

count_words