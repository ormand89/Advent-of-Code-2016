require_relative 'way_matrix'

class Coordinates

  def initialize
    @x_coordinate = 1
    @y_coordinate = 3
    @matrix = Way_Matrix.new
  end

  def up
    @y_coordinate -= 1 if @matrix.element_exist?(@x_coordinate, @y_coordinate - 1)
  end

  def down
    @y_coordinate += 1 if @matrix.element_exist?(@x_coordinate, @y_coordinate + 1)
  end

  def right
    @x_coordinate += 1 if @matrix.element_exist?(@x_coordinate + 1, @y_coordinate)
  end

  def left
    @x_coordinate -= 1 if @matrix.element_exist?(@x_coordinate - 1, @y_coordinate)
  end

  def move(character)
    case character
      when 'L'
        left
      when 'R'
        right
      when 'U'
        up
      when 'D'
        down
      else
        puts "Unknown symbol"
    end
  end

  def get_coordinate # rename
    @matrix.get_element(@x_coordinate, @y_coordinate)
  end

end
