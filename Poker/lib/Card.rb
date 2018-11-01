class Card
  attr_reader :suit, :value

  SUITS = [:H, :S, :C, :D]

  CARD_VALUES = {
    2 => 2,
    3  => 3,
    4  => 4,
    5  => 5 ,
    6  => 6 ,
    7  => 7,
    8  => 8,
    9  => 9,
    10  => 10,
    :J  => 11,
    :Q  => 12,
    :K  => 13,
    :A  => 14
  }

  def initialize(value, suit)
    @suit = suit
    @value = value
    @dealt = :deck
  end




end
