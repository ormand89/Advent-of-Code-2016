require_relative 'south'
require_relative 'west'
require_relative 'sides'

class West < Sides

  def turn_left(current_position, x)
    current_position[1] -= x
    [South.new, current_position]
  end

  def turn_right(current_position, x)
    current_position[1] += x
    [North.new, current_position]
  end

end