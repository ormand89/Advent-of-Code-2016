class FileInput
  def initialize
    @file = File.open('task.txt')
  end

  def get_steps
    @file.readline.split ", "
  end

end