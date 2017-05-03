require_relative 'file_input'
require_relative 'coordinates'

class Second # Rename class

  def initialize
    @file = FileInput.new
    @coordinate = Coordinates.new
    @code = []
  end

  # Decide which method should be called to fetch the code, hide other methods.

  def make_steps
    @file.get_steps.each do |lines|
      lines.each_char {|character| @coordinate.move(character)}
      @code << @coordinate.get_coordinate
    end
  end

  def build_code
    make_steps
    puts @code.to_s # remove all puts from all the projects.
  end

end
