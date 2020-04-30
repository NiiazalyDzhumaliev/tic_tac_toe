class Board
  def initialize
    @board = [
      %w[X 2 3],
      %w[4 X 6],
      %w[7 8 X]
    ]
  end

  def display_board
    i = 0
    while i < 3
      x = 0
      while x < 3
        print @board[i][x]
        print '|'
        x += 1
      end
      i += 1
      puts ''
    end
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
