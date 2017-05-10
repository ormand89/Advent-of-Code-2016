require 'sides/north'
require 'sides/east'
require 'sides/west'
require 'sides/south'
require 'history'

class Compass
  START_POSITION = [0, 0]
  START_SIDE = North

  def initialize(start_side = START_SIDE, start_position = START_POSITION)
    @current_position = start_position
    @side = start_side
    @history = History.new(start_position)
  end

  def move(side, steps_number)
    case side
    when 'L'
      move_left(steps_number)
    when 'R'
      move_right(steps_number)
    else
      puts 'Wrong side'
    end
  end

  def steps_from_start
    x_coordinate, y_coordinate = *@current_position
    x_coordinate.abs + y_coordinate.abs
  end

  private

  def move_left(steps_number)
    steps_number.times do
      @side.step_left(@current_position)
      @history.update_history(@current_position) unless @history.first_repeat
    end
    @side = @side.turn_left
  end

  def move_right(steps_number)
    steps_number.times do
      @side.step_right(@current_position)
      @history.update_history(@current_position) unless @history.first_repeat
    end
    @side = @side.turn_right
  end
end
