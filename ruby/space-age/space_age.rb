# frozen_string_literal: true

# Class SpaceAge
#
class SpaceAge
  YEAR_IN_PLANETS = {
    mercury: 0.2408467,
    venus: 0.61519726,
    earth: 1,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }.freeze

  YEAR_IN_SECONDS = 31_557_600.0

  attr_reader :age_in_seconds

  def initialize(seconds)
    @age_in_seconds = seconds
  end

  YEAR_IN_PLANETS.each do |planet, years|
    define_method("on_#{planet}") { age_in_seconds / (YEAR_IN_SECONDS * years) }
  end
end
