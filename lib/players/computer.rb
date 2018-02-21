class Players::Computer < Player

attr_accessor :player

  def initialized(token)
    Player.new=self
    @token
  end

  def move(board)
    binding.pry
    input = gets.strip
    computer.move(board) == valid_move
    if valid_move? ("1, 9") && valid_move == " "
      move(board, position, current_player)
    else
      turn(board)
    end
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
