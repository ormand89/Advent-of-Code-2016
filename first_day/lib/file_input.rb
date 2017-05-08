class FileInput
  FILE = File.expand_path('task', File.dirname(__FILE__))

  def initialize(file_input = FILE)
    @file = File.open(file_input)
  end

  def moves
    @file.readline.split(", ")
  end
end
