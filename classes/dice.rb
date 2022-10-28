class Dice 
  def initialize(sides)
      @sides = sides
      puts "You're rolling a die with #{sides} sides"
  end

  def roll
    value = rand(@sides.to_i) + 1
    puts value

    
    
    
  end
end