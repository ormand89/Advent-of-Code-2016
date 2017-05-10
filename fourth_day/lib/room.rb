require 'shift_cipher'
require 'dictionary'

class Room

  include Dictionary
  include ShiftCipher

  def initialize(room)
    @id, @checksum, @name = *room
  end

  def id
    real? ? @id : 0
  end

  def caesar_code
    @id if shift(@name, @id).match(/north/)
  end

  private

  def real?
    count_checksum(@name) == @checksum
  end
end
