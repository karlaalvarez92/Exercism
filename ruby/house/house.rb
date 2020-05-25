# frozen_string_literal: true

class House
  BEGINNING = 'This is'
  ENDING = " the house that Jack built.\n"
  VERSES = [
    ['malt', 'lay in'],
    %w[rat ate],
    %w[cat killed],
    %w[dog worried],
    ['cow with the crumpled horn', 'tossed'],
    ['maiden all forlorn', 'milked'],
    ['man all tattered and torn', 'kissed'],
    ['priest all shaven and shorn', 'married'],
    ['rooster that crowed in the morn', 'woke'],
    ['farmer sowing his corn', 'kept'],
    ['horse and the hound and the horn', 'belonged to']
  ].freeze

  def self.recite
    (0..VERSES.size).map { |num| strophe(num) }.join("\n")
  end

  def self.line(input)
    " the #{input[0]}\nthat #{input[1]}"
  end

  def self.strophe(num)
    line = VERSES[0...num].reverse.map { |section| line(section) }.join
    BEGINNING + line + ENDING
  end
end
