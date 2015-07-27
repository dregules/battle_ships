require 'battle_ship'

describe BattleShip do
  #let (:board) { double(:board, {:ship_location => [4,6] } ) }

  it 'places to a location' do
    expect(subject).to respond_to(:place_location).with(2).arguments
  end

  it 'returns ship_location' do
    expect(subject.place_location 4, 6).to eq [4,6]
  end


end
