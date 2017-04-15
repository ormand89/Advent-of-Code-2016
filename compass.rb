class Compass
  attr_accessor :start_position, :sides, :current_position

  def initialize
    @start_position = [0, 0]
    @current_position = [0, 0]
    @sides = North.new
  end

  def turn_left(x)
    @sides.turn_left(@current_position, x)[0]

  end

  def turn_right(x)
    @sides.turn_right(@current_position, x)[0]
  end

end