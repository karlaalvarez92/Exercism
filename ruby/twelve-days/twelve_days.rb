# frozen_string_literal: true

class TwelveDays
  SONG = {
    1 => ['first', "a Partridge in a Pear Tree.\n"],
    2 => ['second', 'two Turtle Doves, and '],
    3 => ['third', 'three French Hens, '],
    4 => ['fourth', 'four Calling Birds, '],
    5 => ['fifth', 'five Gold Rings, '],
    6 => ['sixth', 'six Geese-a-Laying, '],
    7 => ['seventh', 'seven Swans-a-Swimming, '],
    8 => ['eighth', 'eight Maids-a-Milking, '],
    9 => ['ninth', 'nine Ladies Dancing, '],
    10 => ['tenth', 'ten Lords-a-Leaping, '],
    11 => ['eleventh', 'eleven Pipers Piping, '],
    12 => ['twelfth', 'twelve Drummers Drumming, ']
  }.freeze

  ORDINAL_INDEX = 0
  GIFT_INDEX = 1
  MAX_VERSE = 12

  def self.song
    line_break = "\n"
    verse = ''
    (1..MAX_VERSE).each do |num|
      line_break = '' if num == MAX_VERSE
      verse +=
        "On the #{SONG[num][ORDINAL_INDEX]} day of Christmas my true love gave to me: " + gifts(num) + line_break
    end
    verse
  end

  def self.gifts(start)
    gifts = ''
    start.downto(1) { |num| gifts += SONG[num][GIFT_INDEX] }
    gifts
  end
end
