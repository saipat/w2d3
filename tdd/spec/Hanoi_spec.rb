require 'Hanoi'
require 'rspec'

RSpec.describe Towers_of_hanoi do
  subject(:tower) {Towers_of_hanoi.new}
  describe "#initialize" do
    it "instantiates a game board with 3 towers" do
      expect(tower.towers).to eq([[3, 2, 1], [], []])
    end
  end

  describe "#prompt" do

  end

  describe "#play_game" do
    it "runs until game over" do

    end
  end

  # describe

end
