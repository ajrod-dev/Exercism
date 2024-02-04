module Chess
  # TODO: define the 'RANKS' constant
  RANKS = 1..8
  # TODO: define the 'FILES' constant
  FILES = "A".."H"

  def self.valid_square?(rank, file)
    if RANKS.include?(rank) and FILES.include?(file.upcase)
      true
    else 
      false
    end
  end

  def self.nick_name(first_name, last_name)
    return (first_name[0..1] + last_name[-2..-1]).upcase
  end

  def self.move_message(first_name, last_name, square)
    nickname = nick_name(first_name, last_name)
    puts square
    if valid_square?(square[1].to_i, square[0])
      "#{nickname} moved to #{square}"
    else
      "#{nickname} attempted to move to #{square}, but that is not a valid square"
    end
  end
end

puts Chess::move_message("Alex", "Rodriguez", "B1")