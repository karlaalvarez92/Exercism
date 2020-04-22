# frozen_string_literal: true

# Class Grains
#
class Grains
  MAX_BOARD = 64
  MIN_BOARD = 1
  BASE = 2

  def self.square(num)
    raise ArgumentError if num < MIN_BOARD || num > MAX_BOARD

    BASE**(num - MIN_BOARD)
  end

  def self.total
    BASE**MAX_BOARD - MIN_BOARD
  end
end
