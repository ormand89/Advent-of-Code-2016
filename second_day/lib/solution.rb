require 'file_input'
require 'coordinates'

class Solution # Rename class

  def initialize(steps = FileInput.new.steps)
    @steps = steps
  end

  # Decide which method should be called to fetch the code, hide other methods.
  def build_code
    make_steps
    @code # remove all puts from all the projects.
  end

  private

  def make_steps
    @coordinates = Coordinates.new(1, 3)
    @code = []
    @steps.each do |step|
      step.each_char {|character| @coordinates.move(character)}
      @code << @coordinates.symbol
    end
  end
end