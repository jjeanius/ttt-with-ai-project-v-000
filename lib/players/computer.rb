class Players::Computer < Player

attr_accessor :player

  def initialized(token)
    Player.new=self
     @token
  end

  def move(board)
    binding.pry
    if !board.taken?("5")
      "5"
    else
      next_move(board) + 1
    end
  end

  def next_move
    win(board) || block(board) || corner(board) || randon
  end

  def corner(board)
    [0,2,6,8].detect{|cell|} !board.taken?(cell+1)}
  end

  def winning_combo?(board, token)
      Game::WIN_COMBINATIONS.detect do |combo|
        ((board.cells[combo[0]] == token && board.cells[combo[1]] == token) && !board.taken?(combo[2]+1)) ||
        ((board.cells[combo[1]] == token && board.cells[combo[2]] == token) && !board.taken?(combo[0]+1)) ||
        ((board.cells[combo[0]] == token && board.cells[combo[2]] == token) && !board.taken?(combo[1]+1))
      end
   end

end
