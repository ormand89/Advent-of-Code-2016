class FileInput

FILE = File.expand_path('task', File.dirname(__FILE__))

  def initialize(fileinput = FILE)
    @file = File.open(fileinput)
  end

  def steps
    @file.readline.split(", ")
  end

end
