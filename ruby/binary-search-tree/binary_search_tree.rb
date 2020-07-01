# frozen_string_literal: true

class Bst
  attr_reader :data, :left, :right

  def initialize(node)
    @data = node
    @left = nil
    @right = nil
  end

  def insert(number)
    number > data ? insert_right(number) : insert_left(number)
  end

  def insert_left(num)
    @left ? @left.insert(num) : @left = Bst.new(num)
  end

  def insert_right(num)
    @right ? @right.insert(num) : @right = Bst.new(num)
  end

  def each
    return to_enum unless block_given?

    to_a.each { |value| yield value }
  end

  def to_a
    @left.to_a + [data] + @right.to_a
  end
end
