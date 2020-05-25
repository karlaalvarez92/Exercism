# frozen_string_literal: true

class SecretHandshake
  def initialize(number)
    @number = number
  end

  def commands
    return [] if @number.is_a? String

    events = ['wink', 'double blink', 'close your eyes', 'jump']

    binary_reverse = @number.to_s(2).chars.reverse.map(&:to_i)

    actions = []
    binary_reverse.map.with_index do |num, i|
      if num == 1
        if i == 4
          actions = actions.reverse
        else
          actions << events[i]
        end
      end
    end
    actions
  end
end
