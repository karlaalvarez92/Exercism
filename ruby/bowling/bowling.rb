# frozen_string_literal: true

# Class Game
#
class Game
  class BowlingError < ArgumentError; end
  def initialize
    @all = []
  end

  def roll(pin)
    raise BowlingError unless valid?(pin)

    @all << pin
  end

  def score
    scores = @all
    array = []
    scores.each_with_index do |num, i|
      break if i == (scores.length - 1)

      if i == (scores.length - 3) && num == 10
        array << [num + scores[i + 1] + scores[i + 2]]
        break
      elsif num == 10
        array << [num + scores[i + 1] + scores[i + 2]]
      elsif num + scores[i + 1] == 10
        array << [num + scores[i + 1] + scores[i + 2]]
        scores.delete_at(i + 1)

      else
        array << [num + scores[i + 1]]
        scores.delete_at(i + 1)
      end
    end

    array.flatten.sum
  end

  def valid?(pin)
    pin > -1 &&
      pin < 11 &&
      !pin.nil? &&
      @all.length < 21
  end
end
