class Players::Computer < Player

attr_accessor :player

  def initialized(token)
    Player.new=self
     @token
  end

  def move(board)
    binding.pry
    if valid_move(board) == 5
      "5"
    else
      best_move(board) + 1
    end
  end

  def best_move
    valid_move 
  end

  def valid_move
    valid_move << computer_move
    move.each do|input|
      input.move == valid_move
    end
  end
  
  
end




    