class HighScores
  def initialize(scores)
    @scoresGame = scores
  end

  def scores
    @scoresGame
  end

  def latest
    @scoresGame[-1]
  end

  def personal_best
    @scoresGame.sort[-1]
  end

  def personal_top_three
    sortedScores = @scoresGame.sort{|a, b| b <=> a}
    sortedScores[0..2]
    end

  def latest_is_personal_best?
    @scoresGame.max == @scoresGame[-1]
  end

end


