# frozen_string_literal: true

# Class WordProblem
#
class WordProblem
  def initialize(problem)
    @problem = problem
  end

  def answer
    solve = 0
    @problem.scan(/([^-?0-9]+)(-?[0-9]*)/).each do |operator, number|
      int = number.to_i
      operator = operator.strip

      unless operator.match?(/What is|plus|minus|multiplied by|divided by/)
        raise ArgumentError
      end

      solve = int if operator == 'What is'
      solve += int if operator == 'plus'
      solve -= int if operator == 'minus'
      solve *= int if operator == 'multiplied by'
      solve /= int if operator == 'divided by'
    end

    solve
  end
end
