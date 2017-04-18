require_relative 'east'
require_relative 'west'
require_relative 'sides'
require_relative '../history'

class South < Sides

  def self.turn_left(current_position, x)
    1.upto(x) do
      current_position[0] += 1
      History.update_position(current_position)
    end
    East
  end

  def self.turn_right(current_position, x)
    1.upto(x) do
      current_position[0] -= 1
      History.update_position(current_position)
    end
    West
  end

end