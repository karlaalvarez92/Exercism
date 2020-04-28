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
    (1..MAX_BOARD).reduce { |acc, value| acc + square(value) }
  end
end
