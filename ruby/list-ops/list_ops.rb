# frozen_string_literal: true

# Class ListOps
#
class ListOps
  def self.arrays(array)
    counter = 0
    array.each { |el| counter += 1 if el.nil? }
    counter
  end

  def self.reverser(array)
    reverse = []
    reverse << array.pop until array.length.zero?
    reverse
  end

  def self.concatter(input1, input2)
    compound_array = [input1, input2]
    concat_array = []
    compound_array.each do |array|
      array.each { |el| concat_array << el }
    end
    concat_array
  end

  def self.mapper(array)
    result = []
    array.each do |el|
      result << yield(el)
    end
    result
  end

  def self.filterer(array)
    result = []
    array.each do |el|
      result << el if yield(el)
    end
    result
  end

  def self.sum_reducer(array)
    result = 0
    array.each { |num| result += num }
    result
  end

  def self.factorial_reducer(array)
    result = 1
    array.each { |num| result *= num }
    result
  end
end
