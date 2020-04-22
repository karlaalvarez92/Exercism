# frozen_string_literal: true

class Matrix
  attr_reader :rows, :columns
  def initialize(input)
    @rows = input.split(/\n/).map { |el| el.split(' ').map(&:to_i) }
    @columns = rows.transpose
  end
end
