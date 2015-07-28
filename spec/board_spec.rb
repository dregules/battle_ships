require 'board'

describe Board do

  let(:grid) { double('grid', :boundaries => 7)}
  let(:ship) { double('ship', :location => 'A8', :orientation => 'vertical')}

  it 'responds to #total_size' do
    expect(subject).to respond_to :board_size
  end

  # it 'responds to #get_all_locations' do
  #   ship = BattleShip.destroyer
  #   ship.place(subject, location, orientation)
  #   expect(subject.get_all_locations).to eq ship.location
  # end



end
