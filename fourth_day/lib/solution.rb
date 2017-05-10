require 'parser'
require 'room'
require 'file_input'

class Solution

  include Parser

  def initialize(steps = FileInput.new.steps)
    @steps = steps
    @sum = 0
  end

  def solve
    @steps.each do |step|
      count_sum(step)
    end
    [] << @sum << @id_encrypted
  end

  private

  def count_sum(string)
    room = Room.new(parameters(string))
    @sum += room.id
    @id_encrypted ||= room.caesar_code
  end
end

