require_relative 'matrix_helper'

class Coordinates
  DIRECTIONS = {'L' => :left,
                'R' => :right,
                'U' => :up,
                'D' => :down }

  def initialize(start_x = 1, start_y = 3)
    @x_coordinate = start_x
    @y_coordinate = start_y
  end

  def move(character)
    send(DIRECTIONS[character])
  end

  def symbol # rename
    MatrixHelper.element(@x_coordinate, @y_coordinate)
  end

  private

  def up
    @y_coordinate -= 1 if MatrixHelper.element_valid?(@x_coordinate, @y_coordinate - 1)
  end

  def down
    @y_coordinate += 1 if MatrixHelper.element_valid?(@x_coordinate, @y_coordinate + 1)
  end

  def right
    @x_coordinate += 1 if MatrixHelper.element_valid?(@x_coordinate + 1, @y_coordinate)
  end

  def left
    @x_coordinate -= 1 if MatrixHelper.element_valid?(@x_coordinate - 1, @y_coordinate)
  end
end
