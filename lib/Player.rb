class Player
  def initialize(player_one, player_one_sym, player_two_sym)
    @player_one = player_one
    @player_one_sym = player_one_sym
    @player_two_sym = player_two_sym
  end

  def sym_check(current_player)
    current_sym = if current_player == @player_one
                    @player_two_sym
                  else
                    @player_one_sym
                  end
    current_sym
  end

  def move_check(move)
    if (1..9).any?(move)
      true
    else
      false
    end
  end
end
