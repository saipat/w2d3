class Towers_of_hanoi
  attr_reader :towers

  def initialize
    @towers = [[3, 2, 1], [], []]

  end

  def prompt
    puts "Please enter the tower you want to select: "
    from_tower = gets.chomp
    
  end


end
