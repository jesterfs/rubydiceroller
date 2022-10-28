class Dice_Set 
  def initialize(sides, number)
      @sides = sides
      @number = number
      puts "You're rolling #{number} dice with #{sides} sides"
  end

  def roll
    total = 0
    @number.times do 
      value = rand(@sides.to_i) + 1
      puts value
      total += value
    end
    puts "Your total is #{total}"
    
    
    
  end
end