require_relative '../lib/board.rb'

class GameLogic < Board
  def win_check(player_sym)
    i = 0
    win = false
    while i < 3
      x = 0
      y = 2
      result_1 = []
      result_2 = []
      result_3 = []
      result_4 = []
      while x < 3
        result_1 << @board[i][x]
        result_2 << @board[x][i]
        result_3 << @board[x][x]
        result_4 << @board[x][y]
        y -= 1
        x += 1
      end
      if result_1.all?(player_sym) || result_2.all?(player_sym)
        win = true
        break
      elsif result_3.all?(player_sym) || result_4.all?(player_sym)
        win = true
        break
      end
      i += 1
    end
    win
   end
end
board = GameLogic.new
board.display_board
puts board.win_check('Y')
