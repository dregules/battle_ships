# require_relative 'battle_ship'
require_relative 'grid'

class Board

  attr_accessor :placed_ships

  def initialize
    @placed_ships = []
  end

  # def total_ships -- use for getting locations
  #   @placed_ships.map { |ship| ship.size }
  # end
end
