require 'board'

describe Board do
  let (:placed_ship) { double(:placed_ship, { :placed? => true }) }
  let (:unplaced_ship) { double(:unplaced_ship, { :placed? => false }) }
  let (:grid) { double(:grid, { :ship_coordinates => 'A3' }) }

  describe '#place_to_grid' do
    it 'responds to method' do
      expect(subject).to respond_to(:place_to_grid).with(2).arguments
    end

    it 'ship is placed' do
      expect(unplaced_ship).to receive(:placed=).with(true)
      subject.place_to_grid(unplaced_ship, 'C4')
    end

    # it 'arguments are passed to #grid.ship_coordinates' do
    #   allow(unplaced_ship).to receive(:placed=).with(true)
    #   expect(grid).to receive(:ship_coordinates=).with('D7')
    #   subject.place_to_grid(unplaced_ship, 'D7')
    # end

  end
end
