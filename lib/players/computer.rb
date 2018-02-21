class Players::Computer < Player

attr_accessor :player

  def initialized(token)
    Player.new=self
     @token
  end

  def move(board)
    if valid_move == 5
      "5"
    else
      best_move(board) + 1
    end

  def best_move(board)
    valid_move << computer_move
    valid_move.each do |move|
      move.move == best_move
    end
  end

  def valid_move
    board.cells = " " && valid_move.between?(1, 9)


  end


end
