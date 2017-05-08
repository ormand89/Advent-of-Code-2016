class FileInput

FILE = File.expand_path('task', File.dirname(__FILE__))

  def initialize(fileinput = FILE)
    @file = File.open(fileinput) # move file name to constant, add default param to initializer
  end

  def steps # use regular method name like 'steps'
    @file.readlines.each do |line|
      line.chop # Be extremely careful about using methods with bang '!'.
                # Check the difference, remove bang, rewrite logic if needed
    end
  end
  
end