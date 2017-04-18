require_relative 'Sides/north'
require_relative 'file_input'
require_relative 'compass'
require_relative 'history'

class FirstDay

  b = Compass.new
  FileInput.new.get_steps.each do |turn|
    if turn[0] == 'L'
      b.sides = b.turn_left(turn[1..turn.length - 1].to_i)
    else
      b.sides = b.turn_right(turn[1..turn.length - 1].to_i)
    end

  end

  puts b.current_position.to_s
  puts History.get_first.to_s

end

