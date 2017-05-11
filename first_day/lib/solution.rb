require 'file_input'
require 'compass'
require 'move'

class Solution

  def initialize(file_name)
    @file_name = file_name
    @compass = Compass.new
  end

  def go
    moves.each do |move|
      @compass.move(move)
    end
    @compass.steps_from_start
  end

  private

  def moves
    @moves ||= FileInput.new(@file_name).moves.map { |raw_move| Move.new(raw_move) }
  end
end

