require 'battle_ship'

describe BattleShip do
  let(:board) { double('board', placed_ships: [])}

  it 'responds to place' do
    expect(subject.place).to respond_to(:place).with(1).argument
  end

  it 'battleship was added to placed_ships' do
    subject.place board
    expect(board.placed_ships).to include(subject)
  end

  it 'starts with a type' do
    expect((BattleShip.new 'boat').SHIPS).to include('boat')
  end

  describe '#ship_size' do
    it 'determine <boat> length' do
      expect((BattleShip.new 'boat').ship_size 'boat').to eq 2
    end

    it 'determine <submarine> length' do
      expect((BattleShip.new 'submarine').ship_size 'submarine').to eq 3
    end

    it 'determine <destroyer> length' do
      expect((BattleShip.new 'destroyer').ship_size 'destroyer').to eq 3
    end

    it 'determine <battleship> length' do
      expect((BattleShip.new 'battleship').ship_size 'battleship').to eq 4
    end

    it 'determine <aircraft_carrier> length' do
      expect((BattleShip.new 'aircraft_carrier').ship_size 'aircraft_carrier').to eq 5
    end
end


end
