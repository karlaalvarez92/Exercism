# frozen_string_literal: true

class Garden
  KIDS = %w[
    Alice Bob Charlie David
    Eve Fred Ginny Harriet
    Ileana Joseph Kincaid Larry
  ].freeze

  PLANTS = {
    'G' => :grass,
    'C' => :clover,
    'R' => :radishes,
    'V' => :violets
  }.freeze

  PLANTS_PER_CHILD = 2

  def initialize(plants, kids = KIDS)
    @kids = kids.sort
    @plants = plants

    plants_in_cups = []
    @plants.split(/\n/)
           .map(&:chars)
           .each do |line|
      line.map! { |plant| PLANTS[plant] }
      per_child = []
      line.each_slice(PLANTS_PER_CHILD) { |slice| per_child << slice }
      plants_in_cups << per_child
    end

    @kids.each_with_index do |kid, index|
      per_child = []
      define_singleton_method(kid.downcase) do
        plants_in_cups.each { |row| per_child << row[index] }

        per_child.flatten
      end
    end
  end
end
