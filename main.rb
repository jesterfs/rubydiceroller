#!/usr/bin/env ruby

require_relative 'classes/dice.rb'
require_relative 'classes/dice_set.rb'

puts "let's roll some dice"
puts "How many dice?"
number = gets.chomp.to_i

if number < 1 
  puts 'Oh. Nevermind.'
end

if number === 1
  puts "How many sides?"
  print '>'
  sides = gets.chomp

  die = Dice.new(sides)

  puts 'Press R to roll'
  response = gets.chomp.downcase

  while response == 'r'
    die.roll
    puts 'Roll again? (Press any other key to quit)'
    print '>'
    response = gets.chomp.downcase
    
  end

  puts 'Thanks for playing'

else
  puts "How many sides will these dice have?"
  print '>'
  sides = gets.chomp

  dice_set = Dice_Set.new(sides, number)

  puts 'Press R to roll'
  response = gets.chomp.downcase

  while response == 'r'
    dice_set.roll
    puts 'Roll again? (Press any other key to quit)'
    print '>'
    response = gets.chomp.downcase
    
  end

  puts 'Thanks for playing'
end

