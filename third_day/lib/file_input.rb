class FileInput
  FILE = File.expand_path('task', File.dirname(__FILE__))

  def initialize(file_input = FILE)
    @file = File.open(file_input)
  end

  def sides_by_line
    @input_task = []
    @file.readlines.each do |line|
      @input_task << line.strip.split(/\s{1,}/).map(&:to_i)
    end
    @input_task
  end

  def sides_by_raw
    @input_task_raws = matrix_transpose(sides_by_line)
  end

  private

  def matrix_transpose(array)
    array_transposed = []
    3.times do |k|
      i = 0
      while i < array.size
        array_transposed << [array[i][k], array[i + 1][k], array[i + 2][k]]
        i += 3
      end
    end
    array_transposed
  end
end

