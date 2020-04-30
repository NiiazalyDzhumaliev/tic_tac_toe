#!/usr/bin/env ruby

puts '-------------Welcome to Tic Tak Toe-----------------'
print 'Enter Player 1 name: '

player_1 = gets.chomp.capitalize

puts "The Player 1 is #{player_1}"

print 'Enter Player 2 name: '

player_2 = gets.chomp.capitalize

puts "The Player 2 is #{player_2}"

puts 'Player 1 Please Select Your Symbol X or O'

player_1_sym = gets.chomp.upcase

until player_1_sym == 'X' || player_1_sym == 'O'
  puts 'Please choose the correct symbol X or O'
  player_1_sym = gets.chomp.upcase
end

player_2_sym = if player_1_sym == 'X'
                 'O'
               else
                 'X'
               end

puts "#{player_1} is #{player_1_sym} and #{player_2} is #{player_2_sym}"
