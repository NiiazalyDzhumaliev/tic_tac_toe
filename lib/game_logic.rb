require_relative '../lib/board.rb'

class GameLogic < Board
  def check_winner(current_sym)
    win_generator
    @win_arr.each do |sub_array|
      return true if sub_array.all?(current_sym)
    end
    false
  end
end
