class GameStart
  def name_check(player_name)      
    player_name.split('').any?(/\w/) ? true :false
  end

  def duplicate_check(player_one, player_two)
    player_one != player_two ? true : false
  end

  def sym_picker(player_one_sym)
     player_one_sym == "X" ? "O" : "X"               
  end
end
