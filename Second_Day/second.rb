require_relative 'file_input'
require_relative 'coordinates'

class Second

  def initialize
    @file = FileInput.new
    @coordinate = Coordinates.new
    @code = []
  end

  def make_steps
    @file.get_steps.each do |lines|
      lines.each_char {|character| @coordinate.move(character)}
      @code << @coordinate.get_coordinate
    end
  end

  def get_code
    make_steps
    puts @code.to_s
  end

end
