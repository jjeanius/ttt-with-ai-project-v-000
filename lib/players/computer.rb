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
    board.cells = " " && valid_move(1, 9)


  end


end
  #    describe '#move' do
  #      it 'returns a valid position for the computer to move' do
  #        computer = Players::Computer.new("X")
  #        board = Board.new
#
#          valid_moves = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
#
#          computer_move = computer.move(board)
#
#          expect(valid_moves).to include(computer_move)
