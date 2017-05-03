class FileInput

  FILE = 'task'

  def initialize(fileinput = FILE)
    @file = File.open(fileinput)
  end

  def steps
    @file.readline.split(", ")
  end

end
