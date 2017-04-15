require_relative 'north'
require_relative 'south'
require_relative 'sides'

class East < Sides

  def turn_left(current_position, x)
    current_position[1] += x
    [North.new, current_position]
  end

  def turn_right(current_position, x)
    current_position[1] -= x
    [South.new, current_position]
  end

end