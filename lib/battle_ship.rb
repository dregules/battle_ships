require_relative 'board'

class BattleShip

  attr_accessor :length

  SHIPS = { 'boat' => 2,
            'submarine' => 3,
            'destroyer' => 3,
            'battleship' => 4,
            'aircraft_carrier' => 5
          }

  def initialize ship_type
    @length = ship_size ship_type
  end

  def place board
    board.placed_ships << self
  end

  def ship_size type
    @length = SHIPS[type]
  end

end
