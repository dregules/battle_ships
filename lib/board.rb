require_relative 'battle_ship'
require_relative 'grid'

class Board
  attr_accessor :grid

  def initialize
    @grid = Grid.new
  end

  def place_to_grid ship, ship_coordinates
    ship.placed = true
    grid.ship_coordinates = ship_coordinates
  end
end
