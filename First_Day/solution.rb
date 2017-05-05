require_relative 'file_input'
require_relative 'compass'

class Solution

  def initialize
    @compass = Compass.new
    @file = FileInput.new
  end

  def go
    @file.steps.each do |turn|
    @compass.move(turn)
    end
  end

end
