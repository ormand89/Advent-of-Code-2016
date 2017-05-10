require 'file_input'
require 'triangle'

class Solution

include Triangle

  def initialize(steps = FileInput.new)
    @steps = steps
    @triangles_counter = 0
  end

  def resolve_first
    go(@steps.steps)
  end

  def resolve_second
    go(@steps.steps_second)
  end

  private

  def go(steps)
    steps.each { |step| @triangles_counter += 1 if valid?(step) }
    @triangles_counter
  end
end

