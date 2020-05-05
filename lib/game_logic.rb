require_relative '../lib/board.rb'

class GameLogic < Board
  def check_winner(current_sym)
    win_generator
    @win_arr.each do |sub_array|
      return true if sub_array.all?(current_sym)
    end
    false
  end

  def draw_check
    game_on = true
    count = 0
    @board.each do |sub_array|
      count += 1 if sub_array.any?(Numeric)
    end
    game_on = false if count.zero?
    game_on
  end
end
