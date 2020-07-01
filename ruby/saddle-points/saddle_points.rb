# frozen_string_literal: true

class Matrix
  attr_reader :rows, :columns
  def initialize(input)
    @matrix = input.split("\n").map { |el| el.split(' ').map(&:to_i) }
    @rows = @matrix
    @columns = @matrix.transpose
    # puts @matrix.to_s
  end

  def saddle_points; end
end
