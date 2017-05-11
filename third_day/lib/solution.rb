require 'file_input'
require 'triangle'

class Solution

  include Triangle

  def initialize(file_name)
    @file_name = file_name
    @triangles_counter = 0
  end

  def resolve_first_part
    go(sides.sides_by_line)
  end

  def resolve_second_part
    go(sides.sides_by_raw)
  end

  private

  def sides
    @sides ||= FileInput.new(@file_name)
  end

  def go(triangle_sides_array)
    triangle_sides_array.each { |triangle_sides| @triangles_counter += 1 if valid?(triangle_sides) }
    @triangles_counter
  end
end

