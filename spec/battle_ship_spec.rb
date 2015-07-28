require 'battle_ship'

describe BattleShip do

  it 'responds to place' do
    expect(subject).to respond_to(:place).with(1).argument
  end

  let(:board) { double('board', placed_ships: [])}

  it 'battleship was added to placed_ships' do
    subject.place board
    expect(board.placed_ships).to include(subject)
  end

end
