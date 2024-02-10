class Scrabble
  def initialize(str)
    @str = str
  end

  def score
    scores = {
      "1" => ['A','E','I','O','U','L','N','R','S','T'],
      "2" => ['D','G'],
      "3" => ['B','C','M','P'],
      "4" => ['F','H','V','W','Y'],
      "5" => ['K'],
      "8" => ['J','X'],
      "10" => ['Q','Z']
    }
    count = 0
    total = 0
    @str.each_char do |char|
    	count = 0
      while count < scores.length
      	if scores.values[count].include?(char.upcase)
      		total += scores.key(scores.values[count]).to_i
      	end
      	count += 1
      end
    end
    total
  end
end

scrabble = Scrabble.new("cabbage")
p scrabble.score
