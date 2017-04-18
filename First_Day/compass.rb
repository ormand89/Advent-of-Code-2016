class Compass
  attr_accessor :sides, :current_position

  def initialize
    @current_position = [0, 0]
    @sides = North
  end

  def turn_left(x)
    @sides.turn_left(@current_position, x)
  end

  def turn_right(x)
    @sides.turn_right(@current_position, x)
  end

end