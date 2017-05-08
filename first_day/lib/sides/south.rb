require_relative 'east'
require_relative 'west'
require_relative 'sides'

class South < Sides

  def self.step_left(current_position)
    current_position[0] += 1
  end

  def self.step_right(current_position)
    current_position[0] -= 1
  end

  def self.turn_left
    East
  end

  def self.turn_right
    West
  end
end