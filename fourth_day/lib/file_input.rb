class FileInput
FILE =  ZFile.expand_path('task', File.dirname(__FILE__))

  def initialize(fileinput = FILE)
    @file = File.open(fileinput)
  end

  def steps
    lines = []
    @file.readlines.each do |line|
      lines << line.chop
    end
    lines
  end
end
