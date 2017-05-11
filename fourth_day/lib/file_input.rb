class FileInput
  FILE = File.expand_path('task', File.dirname(__FILE__))

  def initialize(fileinput = FILE)
    @file = File.open(fileinput)
  end

  def rooms
    @rooms = []
    @file.readlines.each do |room|
      @rooms << room.rstrip
    end
    @rooms
  end
end
