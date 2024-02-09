=begin
Black: 0
Brown: 1
Red: 2
Orange: 3
Yellow: 4
Green: 5
Blue: 6
Violet: 7
Grey: 8
White: 9
=end

class ResistorColorDuo
    def self.color_duo(arr)
        colors = {
            "black"=> "0",
            "brown"=> "1",
            "red"=> "2",
            "orange"=> "3",
            "yellow"=> "4",
            "green"=> "5",
            "blue"=> "6",
            "violet"=> "7",
            "grey"=> "8",
            "white"=> "9",
        } 
    	band = arr[0..1].map { |color| colors[color] }
    	band.join.to_i
 
    end
end


p ResistorColorDuo.color_duo(%w[brown black])



