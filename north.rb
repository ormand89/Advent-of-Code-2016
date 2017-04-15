require_relative 'west'
require_relative 'east'
require_relative 'sides'

class North < Sides

  def turn_left(current_position, x)
    current_position[0] -= x
    [West.new, current_position]
  end

  def turn_right(current_position, x)
    current_position[0] += x
    [East.new, current_position]
  end

end