require_relative 'board'

class BattleShip

  attr_accessor :size

  # SHIPS = { 'boat' => 2,
  #           'submarine' => 3,
  #           'destroyer' => 3,
  #           'battleship' => 4,
  #           'aircraft_carrier' => 5
  #         }

  def initialize size
    @size = size
  end

  def place board
    board.placed_ships << self
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