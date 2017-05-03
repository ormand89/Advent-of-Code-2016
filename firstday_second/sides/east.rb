require_relative 'north'
require_relative 'south'
require_relative 'sides'

class East < Sides

  def self.step_left(current_position)
    current_position[1] += 1
  end

  def self.step_right(current_position)
    current_position[1] -= 1
  end

  def self.turn_left
    North
  end

  def self.turn_right
    South
  end

end