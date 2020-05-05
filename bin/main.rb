#!/usr/bin/env ruby

require_relative '../lib/game_logic.rb'
require_relative '../lib/player.rb'
require_relative '../lib/board.rb'
require_relative '../lib/game_start.rb'

game_start = GameStart.new

puts '-------------Welcome to Tic Tak Toe-----------------'
print 'Enter Player 1 name: '

player_one = gets.chomp.capitalize

until game_start.name_check(player_one)
     puts "Please, don't left the empty space"
     player_one = gets.chomp.capitalize
end

puts "The Player 1 is #{player_one}"

print 'Enter Player 2 name: '

player_two = gets.chomp.capitalize

until game_start.name_check(player_two) && game_start.duplicate_check(player_one, player_two)
  puts "Please, don't left the empty space or duplicate name"
  player_two = gets.chomp.capitalize
end

puts "The Player 2 is #{player_two}"

puts 'Player 1 Please Select Your Symbol X or O'

player_one_sym = gets.chomp.upcase

while (player_one_sym != 'X') && (player_one_sym != 'O')
  puts 'Please choose the correct symbol X or O'
  player_one_sym = gets.chomp.upcase
end

player_two_sym = game_start.sym_picker(player_one_sym)

puts "#{player_one} is #{player_one_sym} and #{player_two} is #{player_two_sym}"

current_player = nil
my_play = Player.new(player_one, player_one_sym, player_two_sym)
logic = GameLogic.new

game_on = true
count = 0
while game_on
  game_on = false if count == 9
  break unless game_on

  current_sym = my_play.sym_check(current_player)

  if current_player == player_one
    current_player = player_two
    puts "#{current_player} - #{player_two_sym} choose from available moves: "
    logic.display_board
    player_move = gets.chomp.to_i
    until my_play.move_check(player_move) && logic.update_board(current_sym, player_move)
      puts " #{current_player} - #{player_two_sym} choose a correct move: "
      player_move = gets.chomp.to_i
    end
  else
    current_player = player_one
    puts "#{current_player} - #{player_one_sym} select from available moves: "
    logic.display_board
    player_move = gets.chomp.to_i
    until my_play.move_check(player_move) && logic.update_board(current_sym, player_move)
      puts " #{current_player} - #{player_one_sym} make a correct move: "
      player_move = gets.chomp.to_i
    end
  end

  logic.display_board
  break if logic.check_winner(current_player, current_sym)

  count += 1
end
puts "No one wins it's a draw game. " unless game_on
