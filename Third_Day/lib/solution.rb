require 'file_input'
require 'triangle'

class Solution

include Triangle

  def initialize
    @file = FileInput.new
    @triangles_counter = 0
  end

  def resolve_first
    go(@file.steps)
  end

  def resolve_second
    go(@file.steps_second)
  end

  private

def go(file)
    file.each { |line| @triangles_counter += 1 if valid?(line) }
    @triangles_counter
  end
end

