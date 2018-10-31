require 'testing_arrays.rb'
require 'rspec'

RSpec.describe Array do
  describe "#my_uniq" do
    it "returns unique elements in the correct order" do
      expect([1, 2, 1, 3, 2].my_uniq).to eq([1, 2, 3])
    end

    it "returns an empty array if there are no elements in the array" do
      expect([].my_uniq).to be_empty
    end
  end

  describe "#two_sum" do
    it "returns a pair in which smaller element comes first" do
      expect([-1, 0, 1, 2].two_sum).to eq([[0, 2]])
    end

    it "returns all pairs of positions whose elements sum to zero" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0,4], [2, 3]])
    end

    it "returns an empty array if there are no elements whose sum is zero" do
      expect([1, 3, 5, 7].two_sum).to be_empty
    end
  end

  describe "#my_transpose" do
    it "returns rows as columns and columns as rows" do
      expect([[0, 1, 2], [3, 4, 5], [6, 7, 8]].my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end

    it "returns an empty array when there are no elements" do
      expect([].my_transpose).to be_empty
    end
  end

  describe "#stock_picker" do
    it "returns the index pairing with the highest stock price" do
      expect([1,5,10].stock_picker).to eq([0,2])
    end

    it "ensures that the buy day is before the sell day" do
      expect([10,1,5].stock_picker).to eq([1,2])
    end
  end
end
