require_relative 'south'
require_relative 'north'
require_relative 'sides'

class West < Sides

  def self.step_left(current_position)
    current_position[1] -= 1
  end

  def self.step_right(current_position)
    current_position[1] += 1
  end

  def self.turn_left
    South
  end

  def self.turn_right
    North
  end
end