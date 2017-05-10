class FileInput
FILE = File.expand_path('task', File.dirname(__FILE__))

  def initialize(fileinput = FILE)
    @file = File.open(fileinput)
    @input_task = []
    @input_task_raws = []
  end

  def steps
    @file.readlines.each do |line|
      @input_task << line.strip.split(/\s{1,}/)
    end
    @input_task
  end

  def steps_second
    steps
    3.times do |k|
      @input_task_raws[k] = @input_task[k]
      i = 0
      while i < (@input_task.size - 2)
        @input_task_raws << [@input_task[i][k], @input_task[i + 1][k], @input_task[i + 2][k]]
        i += 3
      end
    end
    @input_task_raws
  end
end

