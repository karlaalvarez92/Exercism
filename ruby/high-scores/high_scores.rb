class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end
  
  def latest
    scores[-1]
  end

  def personal_best
    scores.sort[-1]
  end

  def personal_top_three
    sortedScores = scores.sort{|a, b| b <=> a}
    sortedScores[0..2]
    end

  def latest_is_personal_best?
    scores.max == scores[-1]
  end

end


