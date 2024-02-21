class SpaceAge

  def initialize(age)
    @age = age.to_f
  end

  times = {
        Mercury: 0.2408467,
        Venus: 0.61519726,
        Earth: 31557600,
        Mars: 1.8808158,
        Jupiter: 11.862615,
        Saturn: 29.447498,
        Uranus: 84.016846,
        Neptune: 164.79132
      }
      
  def on_mercury() format("%.2f", (@age / 31536000) * 0.2408467) end
  def on_venus() format("%.2f", (@age / 31536000) * 0.61519726) end
  def on_earth() format("%.2f", @age / 31557600) end
  def on_mars() format("%.2f", (@age / 31536000) * 1.8808158) end
  def on_jupiter() format("%.2f", (@age / 31536000) * 11.862615) end
  def on_saturn() format("%.2f", (@age / 31536000) * 29.447498) end
  def on_uranus() format("%.2f", (@age / 31536000) * 84.016846) end
  def on_neptune() format("%.2f", (@age / 31536000) * 164.79132) end
  

end


age = SpaceAge.new(1_000_000_000)
p age.on_earth