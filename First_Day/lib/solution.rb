require 'file_input'
require 'compass'

class Solution

  def initialize
    @compass = Compass.new
    @file = FileInput.new.steps
  end

  def go
    @file.each do |turn|
    @compass.move(turn)
    end
    @compass.steps_from_start
  end

end
