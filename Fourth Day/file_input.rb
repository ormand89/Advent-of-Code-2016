class FileInput
  def initialize
    @file = File.new('task.txt')
    @input_task = []
  end

  def get_steps
    @file.readlines.each do |line|
      @input_task << line.chop
    end
    @input_task
  end

end
