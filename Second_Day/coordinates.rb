require_relative 'matrix'

class Coordinates

  def initialize
    @x_coordinate = 1
    @y_coordinate = 3
  end

  def up
    @y_coordinate -= 1 if Matrix.element_valid?(@x_coordinate, @y_coordinate - 1)
  end

  def down
    @y_coordinate += 1 if Matrix.element_valid?(@x_coordinate, @y_coordinate + 1)
  end

  def right
    @x_coordinate += 1 if Matrix.element_valid?(@x_coordinate + 1, @y_coordinate)
  end

  def left
    @x_coordinate -= 1 if Matrix.element_valid?(@x_coordinate - 1, @y_coordinate)
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
    end
  end

  def coordinates # rename
    Matrix.element(@x_coordinate, @y_coordinate)
  end

end
