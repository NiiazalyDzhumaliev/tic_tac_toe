#!/usr/bin/env ruby

require_relative '../lib/game_logic.rb'

puts '-------------Welcome to Tic Tak Toe-----------------'
print 'Enter Player 1 name: '

@player_one = gets.chomp.capitalize

puts "The Player 1 is #{@player_one}"

print 'Enter Player 2 name: '

@player_two = gets.chomp.capitalize

puts "The Player 2 is #{@player_two}"

puts 'Player 1 Please Select Your Symbol X or O'

@player_one_sym = gets.chomp.upcase

while (@player_one_sym != 'X') && (@player_one_sym != 'O')
  puts 'Please choose the correct symbol X or O'
  @player_one_sym = gets.chomp.upcase
end

@player_two_sym = if @player_one_sym == 'X'
                    'O'
                  else
                    'X'
                  end

puts "#{@player_one} is #{@player_one_sym} and #{@player_two} is #{@player_two_sym}"

current_player = nil
@play_board = GameLogic.new

def sym_check(player)
  @sym = if player == @player_one
           @player_one_sym
         else
           @player_two_sym
         end
end

def self.move_check(player, move)
  sym_check(player)
  if (1..9).any?(move)
    true if @play_board.update_board(@sym, move)
  else
    false
  end
end

def check_winner(player)
  sym_check(player)
  win = []
  win << true if @play_board.horizontal_check(@sym)
  win << true if @play_board.vertical_check(@sym)
  win << true if @play_board.diagonal_left_check(@sym)
  win << true if @play_board.diagonal_right_check(@sym)
  if win.any?(true)
    puts "#{player} Wins!"
    true
  else
    false
  end
end

game_on = true
count = 0
while game_on
  game_on = false if count == 9
  break unless game_on

  if current_player == @player_one
    current_player = @player_two
    puts "#{current_player} - #{@player_two_sym} choose from available moves: "
    @play_board.display_board
    player_move = gets.chomp.to_i
    until move_check(current_player, player_move)
      puts " #{current_player} - #{@player_two_sym} choose a correct move: "
      player_move = gets.chomp.to_i
    end
  else
    current_player = @player_one
    puts "#{current_player} - #{@player_one_sym} select from available moves: "
    @play_board.display_board
    player_move = gets.chomp.to_i
    until move_check(current_player, player_move)
      puts " #{current_player} - #{@player_one_sym} make a correct move: "
      player_move = gets.chomp.to_i
    end
  end
  @play_board.display_board
  break if check_winner(current_player)

  count += 1
end
puts 'Game Over / Draw move ' unless game_on
