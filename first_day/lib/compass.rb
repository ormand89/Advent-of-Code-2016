require 'sides/north'
require 'sides/east'
require 'sides/west'
require 'sides/south'
require 'history'

class Compass
  START_SIDE = North

  def initialize(start_side = START_SIDE)
    @current_position = [0, 0]
    @side = start_side
    @history = History.new(@current_position)
  end

  def move(step)
    case step.direction
    when 'L'
      move_left(step.steps_count)
    when 'R'
      move_right(step.steps_count)
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
