require 'parser'
require 'room'
require 'file_input'

class Solution

  include Parser

  def initialize(file_name)
    @file_name = file_name
    @sum = 0
  end

  def solve_problem
    rooms.each do |room|
      count_sum(room)
    end
    [] << @sum << @id_encrypted
  end

  private

  def rooms
    @rooms ||=FileInput.new(@file_name).rooms
  end

  def count_sum(string)
    room = Room.new(parameters(string))
    @sum += room.id
    @id_encrypted ||= room.caesar_code
  end
end

