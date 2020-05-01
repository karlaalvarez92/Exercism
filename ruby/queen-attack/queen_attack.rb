# frozen_string_literal: true

class Queens
  ROW = 0
  COLUMN = 1

  def initialize(input)
    @white = input[:white]
    @black = input[:black] || [0, 0]

    raise ArgumentError unless @white.all? { |box| box.between?(0, 7) }
  end

  def attack?
    @white[ROW] == @black[ROW] ||
      @white[COLUMN] == @black[COLUMN] ||
      @white.sum == @black.sum ||
      (@white[COLUMN] == @white[ROW] && @black[COLUMN] == @black[ROW])
  end
end
