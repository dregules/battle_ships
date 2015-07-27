require_relative 'board'

class Grid

attr_accessor :ship_coordinates

def coords_valid?
  valid_letters = { "A" => 0, "B" => 1, "C" => 2, "D" => 3, "E" => 4, "F" => 5, "G" => 6, "H" => 7,
                  "I" => 8, "J" => 9 }

  valid_letters.include? ship_coordinates[0]

end

end
