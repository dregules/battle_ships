require_relative 'board'

class BattleShip

  def place board
    board.placed_ships << self
  end

end
