class Ship
  def initialize size
    @length = size
  end

  def Ship.destroyer
    Ship.new 3
    #@length = 3
  end
end


#Ship.new 5      # => #<Ship:0x007fd1d2971278 @length=5>
#
Ship.destroyer
# destroyer_s

