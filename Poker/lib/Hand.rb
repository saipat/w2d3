require_relative 'Deck'
require_relative 'Card'

class Hand
  def initialize(cards)
    @hand = []
    @hand << 5.times {Deck.cards.pop}
    @hand
  end

  def possibilities
    straight_flush?
    four_of_a_kind?
  end

  def straight_flush?(@hand)


  end

  def four_of_a_kind?()

  end


end
