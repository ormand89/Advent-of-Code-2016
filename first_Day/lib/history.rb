class History

  attr_reader:first_repeat

  def initialize(startposition)
    @hash = {startposition.to_s => 1}
    @first_repeat = nil
  end

  def update_history(new_position)
    @hash.has_key?(new_position.to_s) ? @first_repeat = new_position : @hash[new_position.to_s] ||= 1
  end
    
end