require_relative 'Card'
require 'byebug'

class Deck
  attr_reader :cards, :undealt_cards

  def self.populate

    total_cards = []
    Card::SUITS.each do |suit|
      Card::CARD_VALUES.keys.each do |key|
        total_cards << Card.new(key, suit)
      end
    end
    total_cards
  end

  def initialize
    @cards = Deck.populate.shuffle
    # @undealt_cards = @cards
    # @dealt_cards = []
  end


end
