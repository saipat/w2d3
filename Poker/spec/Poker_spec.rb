require 'rspec'
require 'Card'
require 'Deck'

RSpec.describe Card do
  subject(:card) {Card.new(1, :H)}

  describe "#initialize" do
    it "assigns a value" do
      expect(card.suit).to eq(:H)
      expect(card.value).to eq(1)
    end
  end
end


RSpec.describe Deck do
  subject(:deck) { Deck.new}
  describe "#initialize" do
    it "creates a deck of cards" do
      expect(deck.cards).to_not be_empty
    end
  end
end


# RSpec.describe Hand do
#   let(:cards) {double("card")}
  # subject(:hand) { Hand.new(cards) }

  # describe ("#initialize") do
  #   it "creates a hand of 5 cards" do
  #     expect(hand.length).to eq(5)
  #   end
  # end
# end
