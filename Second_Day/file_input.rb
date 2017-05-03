class FileInput
  def initialize
    @file = File.new('task.txt') # move file name to constant, add default param to initializer
  end

  def get_steps # use regular method name like 'steps'
    @file.readlines.each do |line|
      line.chop! # Be extremely careful about using methods with bang '!'.
                 # Check the difference, remove bang, rewrite logic if needed
    end
  end

end