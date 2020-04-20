# frozen_string_literal: true

# Class Scale
#
class Scale
  attr_reader :name
  SHARP_INTERVALS = %w[C C# D D# E F F# G G# A A# B].freeze
  FLAT_INTERVALS = %w[C Db D Eb E F Gb G Ab A Bb B].freeze
  FLAT_NOTES = %w[F bb Eb g d Db].freeze
  STEPS = { 'm' => 1, 'M' => 2, 'A' => 3 }.freeze

  def initialize(tonic, scale, steps = 'mmmmmmmmmmmm')
    @tonic = tonic
    @steps = steps
    @name = "#{tonic.upcase} #{scale}"
  end

  def pitches
    notes = FLAT_NOTES.include?(@tonic) ? FLAT_INTERVALS : SHARP_INTERVALS

    current = notes.index(@tonic.capitalize)
    array = []
    @steps.each_char do |step|
      current -= 12 if current > 11
      array << notes[current]
      current += STEPS[step]
    end
    array
  end
end
