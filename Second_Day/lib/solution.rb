require 'file_input'
require 'coordinates'

class Solution # Rename class

  def initialize
    @file = FileInput.new.steps
    @coordinate = Coordinates.new
    @code = []
  end

  # Decide which method should be called to fetch the code, hide other methods.
  def build_code
    make_steps
    @code # remove all puts from all the projects.
  end

private
  def make_steps
    @file.each do |line|
      line.each_char {|character| @coordinate.move(character)}
      @code << @coordinate.coordinates
    end
  end

end