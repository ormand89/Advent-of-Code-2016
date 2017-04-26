class FileInput
  def initialize
    @file = File.new('task.txt')
  end

  def get_steps
    @file.readlines.each do |line|
      line.chop!
    end
  end

end