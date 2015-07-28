require 'battle_ship'

describe BattleShip do
  let(:board) { double('board', placed_ships: [])}

  it 'responds to place' do
    expect(subject).to respond_to(:place).with(1).argument
  end

  it 'battleship was added to placed_ships' do
    subject.place board
    expect(board.placed_ships).to include(subject)
  end

  describe '#length' do
  it 'determine <boat> length' do
    subject.boat
    expect(subject.length).to eq 2
  end

  it 'determine <submarine> length' do
    subject.submarine
    expect(subject.length).to eq 3
  end

  it 'determine <destroyer> length' do
    subject.destroyer
    expect(subject.length).to eq 3
  end

  it 'determine <battleship> length' do
    subject.battleship
    expect(subject.length).to eq 4
  end

  it 'determine <aircraft_carrier> length' do
    subject.aircraft_carrier
    expect(subject.length).to eq 5
  end
end


end
