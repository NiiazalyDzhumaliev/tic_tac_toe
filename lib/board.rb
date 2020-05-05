class Board
  def initialize
    @board = [
      %w[1 2 3],
      %w[4 5 6],
      %w[7 8 9]
    ]    
  end

  def display_board
    i = 0
    display = ''
    while i < 3
      x = 0
      while x < 3
        display += @board[i][x].to_s
        display += '|'
        x += 1
      end
      i += 1
      display += "\n"
    end
    display
  end

  def update_board(player_sym, move)
    i = 0
    while i < 3
      x = 0
      while x < 3
        if @board[i][x] == move.to_s
          @board[i][x] = player_sym
          return true
        end
        x += 1
      end
      i += 1
    end
    false
  end
end
