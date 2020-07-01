# frozen_string_literal: true

class Game
  class BowlingError < ArgumentError; end
  def initialize
    @roll_scores = []
    @total_score = 0
  end

  def roll(pin)
    raise BowlingError unless valid?(pin)

    @roll_scores << pin
  end

  def score
    scores = @roll_scores
    # array = []
    scores.each_with_index do |num, i|
      break if last_roll?(i)

      if last_strike?(i, num)
        add_score(num, i)
        break
      elsif strike?(num)
        add_score(num, i)
      elsif spare?(num, i)
        add_score(num, i)
        scores.delete_at(i + 1)

      else
        add_pair_score(num, i)
        scores.delete_at(i + 1)
      end
    end

    @total_score
  end

  def add_score(number, index)
    @total_score += number + @roll_scores[index + 1] + @roll_scores[index + 2]
  end

  def add_pair_score(number, index)
    @total_score += number + @roll_scores[index + 1]
  end

  def strike?(num)
    num == 10
  end

  def spare?(number, index)
    number + @roll_scores[index + 1] == 10
  end

  def last_roll?(index)
    index == @roll_scores.length - 1
  end

  def last_strike?(index, number)
    index == (@roll_scores.length - 3) && number == 10
  end

  def valid?(pin)
    pin > -1 &&
      pin < 11 &&
      !pin.nil? &&
      @roll_scores.length < 21
  end
end
