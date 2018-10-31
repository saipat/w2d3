class Array
  def my_uniq
    result = []
    self.each do |el|
      result << el unless result.include?(el)
    end
    result
  end

  def two_sum
    indices = []
    0.upto(length - 1) do |idx1|
      (idx1 + 1).upto(length - 1) do |idx2|
        indices << [idx1, idx2] if self[idx1] + self[idx2] == 0
      end
    end
    indices
  end

  def my_transpose
    result = Array.new(self.length) {Array.new}

    self.each_with_index do |row1, idx1|
      row1.each_with_index do |col, idx2|
        result[idx2][idx1] = col
      end
    end
    result
  end

  def stock_picker
    pairings = Hash.new
    self.each_with_index do |buy, idx1|
      self.each_with_index do |sell, idx2|
        pairings[[idx1, idx2]] = (sell-buy) if idx2 > idx1
      end
    end
    pairings.sort_by {|k,v| v}.last.first
  end
end
