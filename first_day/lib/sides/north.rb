require_relative 'west'
require_relative 'east'
require_relative 'sides'

class North < Sides

  def self.step_left(current_position)
    current_position[0] -= 1
  end

  def self.step_right(current_position)
    current_position[0] += 1
  end

  def self.turn_left
    West
  end

  def self.turn_right
    East
  end
end