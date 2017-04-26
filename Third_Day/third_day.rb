require_relative 'file_input'
require_relative 'triangle'

class Third_Day

  def initialize
    @file = FileInput.new.get_steps
  end

  def go
    @file.each do |line|
      Triangle.new(line) if Triangle.can_exist?(line)
    end
  end

end
