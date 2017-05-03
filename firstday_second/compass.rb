require_relative 'sides/north'
require_relative 'history'

class Compass

  START_POSITION = [0, 0]
  START_SIDE = North

  def initialize(startposition = START_POSITION, startside = START_SIDE)
    @current_position = startposition 
    @sides = startside
    @history = History.new(startposition)
  end

  def move(turn)
    steps_number = turn.scan(/\d+/).join.to_i
    case turn[0] 
      when 'L'
        move_left(steps_number)
      when 'R'
        move_right(steps_number)
      else
        puts 'Wrong side'
    end
  end

  def move_left(steps_number)
    steps_number.times do 
      @sides.step_left(@current_position)
      @history.update_history(@current_position) if !(@history.first_repeat)
    end
    @sides = @sides.turn_left
  end

  def move_right(steps_number)
    steps_number.times do 
      @sides.step_right(@current_position)
      @history.update_history(@current_position) if !(@history.first_repeat)
    end
    @sides = @sides.turn_right
  end

end
