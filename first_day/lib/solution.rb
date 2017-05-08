require 'file_input'
require 'compass'
require 'steps'

class Solution

  def initialize(steps = Steps.new.steps)
    @steps = steps
  end

  def go
    @compass = Compass.new(North, [0, 0])
    @steps.each do |step|
      @compass.move(*step)
    end
    @compass.steps_from_start
  end
end

