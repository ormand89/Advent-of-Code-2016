class History

  attr_reader:first_repeat

  def initialize(start_position = [0, 0])
    @history = {start_position.to_s => 1}
    @first_repeat = nil
  end

  def update_history(new_position)
    @history.key?(new_position.to_s) ? @first_repeat = new_position : @history[new_position.to_s] ||= 1
  end
end