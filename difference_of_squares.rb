class Squares
  def initialize(num)
    @num = num
  end

  def square_of_sum
    (1..@num).reduce(:+)**2
  end

  def sum_of_squares
    result = 0
    (1..@num).inject { |sum, n| sum + (n**2) }
  end 

  def difference
    square_of_sum - sum_of_squares
  end

end

sq = Squares.new(5)
p sq.square_of_sum
p sq.sum_of_squares
p sq.difference

