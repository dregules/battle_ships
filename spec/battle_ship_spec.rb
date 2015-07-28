require 'battle_ship'

describe BattleShip do

  let(:board) { double('board', placed_ships: [])}

  it 'battleship was added to placed_ships' do
    ship = BattleShip.boat
    ship.place board, 'A5'
    expect(board.placed_ships).to include(ship)
  end

  it 'battleship gets location after placement' do
    ship = BattleShip.boat
    ship.place board, 'A5'
    expect(ship.location).to eq 'A5'
  end

  describe '#ship_size' do
    it 'determine <boat> length' do
      expect((BattleShip.boat).size).to eq 2
    end

    it 'determine <submarine> length' do
      expect((BattleShip.submarine).size).to eq 3
    end

    it 'determine <destroyer> length' do
      expect((BattleShip.destroyer).size).to eq 3
    end

    it 'determine <warrior> length' do
      expect((BattleShip.warrior).size).to eq 4
    end

    it 'determine <aircraft_carrier> length' do
      expect((BattleShip.aircraft_carrier).size).to eq 5
    end
end


end
