require 'parser'
require 'room'
require 'file_input'

class Solution

  include Parser

  def initialize
    @file = FileInput.new.steps
    @sum = 0
  end

  def solve
    @file.each do |line| 
      count_sum(line)
    end
    [] << @sum << @id_encrypted
  end

  private

  def count_sum(string)
    room = Room.new(parametres(string))
    @sum += room.id
    @id_encrypted ||= room.caesar_code
  end
  
end

