module Blackjack
  def self.parse_card(card)
    case card
    when 'ace' then 11
    when 'ten', 'jack', 'queen', 'king' then 10
    when 'nine' then 9
    when 'eight' then 8
    when 'seven' then 7
    when 'six' then 6
    when 'five' then 5
    when 'four' then 4
    when 'three' then 3
    when 'two' then 2
    else 0
    end
  end

  def self.card_range(card1, card2)
    total = parse_card(card1) + parse_card(card2)
    case total
    when (4..11) then 'low'
    when (12..16) then 'mid'
    when (17..20) then 'high'
    when (21) then 'blackjack'
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    return 'P' if card1 == 'ace' && card2 == 'ace'
    dealer_card = parse_card(dealer_card)
    value = card_range(card1, card2)
    if value === 'blackjack' and dealer_card === 10
      'S'
    elsif value === 'blackjack' and dealer_card === 11
      'S'
    elsif value === 'blackjack' and dealer_card != [10..11]
      'W'
    elsif value === 'high' then 'S'
    elsif value === 'mid' and dealer_card >= 7 then 'H'
    elsif value === 'mid' and dealer_card < 7 then 'S'
    elsif value === 'low' then 'H'
    end
  end
end

puts Blackjack::first_turn("ace", "king", "ace")




