# require_relative 'battle_ship'
require_relative 'grid'

class Board

  attr_accessor :placed_ships, :board_size

  def initialize
    @placed_ships = []
  end


  # def get_all_locations #-- use for getting locations
  #   placed_ships.map { |ship| ship.location }
  # end
end
