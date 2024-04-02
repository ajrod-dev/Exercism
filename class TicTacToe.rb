require 'pp'

class TicTacToe


  def initialize
    @game = [0,1,2,3,4,5,6,7,8]
    @turn = true
    p "Player 1 is 'X' and Player 2 is 'O'"
  end

  def start
    loop do
      if @game.all? { |el| el.class == String}
        break
      else
        if @turn
          player_1
        else
          player_2
        end
      end
    end
  end

  def print_game
    @game.each_slice(3) do |row|
      p row.join(' ')
    end
  end

  def player_1
    p "Player 1, what number is your next move?"
    move = gets.chomp.to_i
    @game[move] = 'X'
    print_game
    @turn = false
  end

  def player_2
    p "Player 2, what number is your next move?"
    move = gets.chomp.to_i
    @game[move] = 'O'
    print_game
    @turn = true
  end

end

new_game = TicTacToe.new
new_game.start