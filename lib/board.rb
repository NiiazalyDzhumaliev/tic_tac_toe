class Board
  def initialize
    @board = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]
  end

  def win_generator
    @win_arr = [
      [@board[0][0], @board[0][1], @board[0][2]],
      [@board[1][0], @board[1][1], @board[1][2]],
      [@board[2][0], @board[2][1], @board[2][2]],
      [@board[0][0], @board[1][0], @board[2][0]],
      [@board[0][1], @board[1][1], @board[2][1]],
      [@board[0][2], @board[1][2], @board[2][2]],
      [@board[0][0], @board[1][1], @board[2][2]],
      [@board[0][2], @board[1][1], @board[2][0]]
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
        if @board[i][x] == move
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
