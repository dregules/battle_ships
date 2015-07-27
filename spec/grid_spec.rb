require 'grid'

describe Grid do
  let (:board) { double(:board, { :place_to_grid => true, :ship_coords => 'D8'}) }
  let (:unplaced_ship) { double(:unplaced_ship, { :placed? => false }) }
  let (:placed_ship) { double(:placed_ship, { :placed? => true }) }

  it 'responds to #ships' do
    expect(subject).to respond_to(:ship_coordinates)
  end

  describe '#ship_coordinates' do
    it 'are valid coordinates' do

      expect(subject.coords_valid?).to be true
    end
  end

end
