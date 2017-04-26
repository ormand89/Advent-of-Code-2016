class FileInput
  def initialize
    @file = File.new('task.txt')
    @input_task = []
    @input_task_raws = []
  end

  def get_steps
    @file.readlines.each do |line|
      @input_task << line.strip.split(/\s{1,}/)
    end
    @input_task
  end

  def get_steps_second
    get_steps
    for k in 0..2 do
      i = 0
      while i < (@input_task.size - 2)
        @input_task_raws << [@input_task[i][k], @input_task[i + 1][k], @input_task[i + 2][k]]
        i += 3
      end
    end
    @input_task_raws
  end

end
