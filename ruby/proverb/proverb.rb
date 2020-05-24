# frozen_string_literal: true

# Class Proverb
#
class Proverb
  def initialize(*args, qualifier: '')
    @qualifier = qualifier
    @inputs = args
  end

  def to_s
    qualifier = @qualifier != '' ? (@qualifier + ' ') : @qualifier
    final = "And all for the want of a #{qualifier}#{@inputs[0]}."
    proverb = ''
    first = 0
    second = 1
    while first < (@inputs.length - 1)
      line = "For want of a #{@inputs[first]} the #{@inputs[second]} was lost.\n"
      proverb += line
      first += 1
      second += 1
    end

    proverb + final
  end
end
