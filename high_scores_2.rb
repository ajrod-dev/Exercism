class HighScore
  def initialize(scores)
    @scores = scores
  end

  def highest
    @highest ||= @scores.max
  end

  def latest
    @latest ||= @scores.last
  end

  def top_three
    @top_three ||= @scores.max(3)
  end
end
