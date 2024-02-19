class HighScore
  def initialize(scores)
    @scores = scores
  end

  def highest_score
    @scores.max
  end

  def last_added_score
    @scores.last
  end

  def three_highest_scores
    @scores.max(3)
  end
end
