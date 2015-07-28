require 'battle_ship'

describe BattleShip do
  subject do
    BattleShip.new(ship_type)
  end
  let(:board) { double('board', placed_ships: [])}
  let(:ship_type) {'boat'}
  let (:wrong_ship_type) {'mother'}

  it 'responds to place' do
    expect(subject).to respond_to(:place).with(1).argument
  end

  it 'battleship was added to placed_ships' do
    # subject 'boat'
    subject.place board
    expect(board.placed_ships).to include(subject)
  end

  # it 'Ship type is a String' do
  #
  #   expect(ship_type).to be_a(String)
  #   # raise_error('Wrong type of ship')
  #   # expect(.SHIPS).to include(ship_type)
  # end

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
