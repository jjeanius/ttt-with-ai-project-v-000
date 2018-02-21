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

  def best_move(token)
    valid_move << computer_move
    valid_move.each do |move|
      move.move == best_move
    end
  end

  def valid_move(board)  
    board.cells = " " && move.between?(1, 9)
  end


end
