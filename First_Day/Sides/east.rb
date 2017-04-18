require_relative 'north'
require_relative 'south'
require_relative 'sides'
require_relative '../history'

class East < Sides

  def self.turn_left(current_position, x)
    1.upto(x) do
      current_position[1] += 1
      History.update_position(current_position)
    end
    North
  end

  def self.turn_right(current_position, x)
    1.upto(x) do
      current_position[1] -= 1
      History.update_position(current_position)
    end
    South
  end

end