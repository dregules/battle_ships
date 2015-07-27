require 'board'

describe Board do
let (:ship) { double(:ship, {:place_location => [4,6] } ) }

  it 'respond to #ship_location' do
    expect(subject).to respond_to(:ship_location)
  end

  it 'receive the ship location' do
    allow(ship).to receive(:place_location=).with([4,6])
    expect(subject.ship_location ship).to eq [4,6]
  end

end