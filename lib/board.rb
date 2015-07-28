# require_relative 'battle_ship'
require_relative 'grid'

class Board

  attr_accessor :placed_ships

  def initialize
    @placed_ships = []
  end

end
