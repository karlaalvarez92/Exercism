class Phrase
    def initialize(phrase)
      @phrase = phrase
    end
  
    def word_count
      words_as_array =
        @phrase.
        downcase.
        gsub(/(\n|,|!|@|#|\$|%|\?|&|\^|:|\.| )+/, ' ').
        strip.
        split(' ')
  
        words_as_array.map {|word| normalize_word(word) }.tally
    end
  
    def normalize_word(word)
      word.gsub(/'(.+)'/,'\1')
    end
  end
  

