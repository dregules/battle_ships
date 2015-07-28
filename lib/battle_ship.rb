require_relative 'board'

class BattleShip

  attr_accessor :size, :location
  attr_reader :orientation


  # SHIPS = { 'boat' => 2,
  #           'submarine' => 3,
  #           'destroyer' => 3,
  #           'battleship' => 4,
  #           'aircraft_carrier' => 5
  #         }

  def initialize size
    @size = size
  end

  def place board, location, orientation
    board.placed_ships << self
    @location = location
    @orientation = orientation
  end

  def self.boat
    BattleShip.new 2
  end

  def self.submarine
    BattleShip.new 3
  end

  def BattleShip.destroyer
    BattleShip.new 3
  end

  def self.warrior
    BattleShip.new 4
  end

  def self.aircraft_carrier
    BattleShip.new 5
  end
end
