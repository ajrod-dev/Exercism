class SpaceAge

  def initialize(age)
    @age = age.to_f
  end
      
  def on_mercury() format("%.2f", (@age / 31557600) / 0.2408467).to_f end
  def on_venus() format("%.2f", (@age / 31557600) / 0.61519726).to_f  end
  def on_earth() format("%.2f", (@age / 31557600)).to_f end
  def on_mars() format("%.2f", (@age / 31557600) / 1.8808158).to_f  end
  def on_saturn() format("%.2f", (@age / 31557600) / 29.447498).to_f  end
  def on_jupiter() format("%.2f", (@age / 31557600) / 11.862615).to_f  end
  def on_uranus() format("%.2f", (@age / 31557600) / 84.016846).to_f  end
  def on_neptune() format("%.2f", (@age / 31557600) / 164.79132).to_f  end
  

end


age = SpaceAge.new(2_134_835_688)
p age.on_mercury