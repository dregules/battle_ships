require_relative 'board'

class BattleShip

  attr_accessor :length
  # def initialize ship_type
  #   @length = ship_type
  # end

  def place board
    board.placed_ships << self
  end

  def boat
   @length = 2
  end

  def submarine
   @length = 3
  end

  def destroyer
   @length = 3
  end

  def battleship
   @length = 4
  end

  def aircraft_carrier
   @length = 5
  end

end
