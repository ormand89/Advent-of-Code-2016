require 'file_input'
require 'coordinates'

class Solution # Rename class

  def initialize(file_name)
    @file_name = file_name
    @coordinates = Coordinates.new
  end

  # Decide which method should be called to fetch the code, hide other methods.
  def build_code
    make_steps
    @code # remove all puts from all the projects.
  end

  private

  def steps
    @steps ||= FileInput.new(@file_name).steps
  end

  def make_steps
    @code = []
    steps.each do |step|
      step.each_char {|character| @coordinates.move(character)}
      @code << @coordinates.symbol
    end
  end
end