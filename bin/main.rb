#!/usr/bin/env ruby

puts '-------------Welcome to Tic Tak Toe-----------------'
print 'Enter Player 1 name: '

player_one = gets.chomp.capitalize

puts "The Player 1 is #{player_one}"

print 'Enter Player 2 name: '

player_two = gets.chomp.capitalize

puts "The Player 2 is #{player_two}"

puts 'Player 1 Please Select Your Symbol X or O'

player_one_sym = gets.chomp.upcase

while (player_one_sym != 'X') && (player_one_sym != 'O')
  puts 'Please choose the correct symbol X or O'
  player_one_sym = gets.chomp.upcase
end

player_two_sym = if player_one_sym == 'X'
                   'O'
                 else
                   'X'
                 end

puts "#{player_one} is #{player_one_sym} and #{player_two} is #{player_two_sym}"

current_player = nil

def move_check(move)
  if (1..9).any?(move)
    true
  else
    false
  end
end

def update_board(_move)
  puts 'Validate move in the Board'
  puts 'Update Board'
  puts 'Displays Board'
end

def check_winner(_player)
  puts 'check for win condition'
  puts 'If winner Game Over else Continue Game'
end

game_on = true
while game_on
  if current_player == player_one
    current_player = player_two
    puts "#{current_player} choose from available moves: "
    puts 'Board is displayed here'
    player_move = gets.chomp.to_i
    until move_check(player_move)
      puts " #{current_player} choose a correct move: "
      player_move = gets.chomp.to_i
    end
  else
    current_player = player_one
    puts "#{current_player} select from available moves: "
    puts 'Board is displayed here'
    player_move = gets.chomp.to_i
    until move_check(player_move)
      puts " #{current_player} make a correct move: "
      player_move = gets.chomp.to_i
    end
  end
  update_board(player_move)
  puts 'Board is displayed here'
  game_on = false if winner # whether we found a winner or draw condition
  break unless game_on
end
puts 'Game Over / Draw move ' unless game_on
