class BirdCount
  def self.last_week
    return [0,2,5,3,7,8,4]
  end

  def initialize(birds_per_day)
    @birds_per_day = birds_per_day
  end

  def yesterday
    return @birds_per_day[-2]
  end

  def total
    return @birds_per_day.sum
  end

  def busy_days
    return @birds_per_day.count {|num| num >= 5}
  end

  def day_without_birds?
    return @birds_per_day.any? {|num| num == 0} ? true : false
  end
end

birds_per_day = [2, 5, 0, 7, 4, 1]
bird_count = BirdCount.new(birds_per_day)
puts bird_count.yesterday