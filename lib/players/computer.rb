class Players::Computer < Player

attr_accessor :player

  def initialized(token)
    Player.new=self
    @token
  end

  def move(board)
    player_1 = computer
    computer_move = computer.move(board)
    
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
