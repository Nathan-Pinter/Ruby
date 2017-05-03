FILENAME = ARGV[0]
WORD_TO_CHANGE = ARGV[1]
NEW_WORD = ARGV[2]

def change_words
  contents = File.read(FILENAME)
  # remove punctuation and newlines, and convert all string to lowercase
  contents = contents.downcase.gsub(Regexp.new('\b'+WORD_TO_CHANGE+'\b'), NEW_WORD)
  File.open(FILENAME, 'w') do |f|
    f << contents.downcase
  end
end

change_words