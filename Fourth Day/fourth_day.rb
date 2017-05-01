require_relative 'parser'
require_relative 'shift_cipher'
require_relative 'dictionary'
require_relative 'file_input'

class FourthDay

  @@sum = 0

  def initialize
    @file = FileInput.new.get_steps
    @id = 0
    @checksum = ''
    @string = ''
  end

  def parametres(string)
    @id = Parser.get_id(string)
    @string = Parser.get_string(string)
    @checksum = Parser.get_checksum(string)
    counted_sum = Dictionary.count_checksum(@string)
    @@sum += @id if (counted_sum == @checksum)
    counted_sum
  end

  def caesar_code(string, id)
    id.to_s if ShiftCipher.shift(string, id).match(/north/)
    ShiftCipher.shift(string, id)
  end

  def go
    for line in 0...@file.size do
      parametres(@file[line])
      caesar_code(@string, @id)
    end
    @@sum
  end

end

