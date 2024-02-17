class Clock
  attr_reader :hours, :minutes

  def initialize(hours, minutes)
    @hours = hours % 24
    @minutes = minutes % 60
  end

  def +(minutes)
    new_minutes = (@minutes + minutes) % 60
    additional_hours = (@minutes + minutes) / 60
    new_hours = (@hours + additional_hours) % 24
    Clock.new(new_hours, new_minutes)
  end

  def -(minutes)
    self + (-minutes)
  end

  def ==(other)
    @hours == other.hours && @minutes == other.minutes
  end

  def to_s
    format('%02d:%02d', @hours, @minutes)
  end
end
