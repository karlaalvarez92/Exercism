# frozen_string_literal: true

# Class Anagram
#
class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(words)
    words.map do |word|
      if word.downcase.chars.sort == @word.chars.sort && word.downcase != @word
        word
      end
    end.compact
  end
end
