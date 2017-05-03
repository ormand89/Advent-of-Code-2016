class Sides

  def self.step_left(current_position)
    raise NotImplementedError
  end

  def self.step_right(current_position)
    raise NotImplementedError
  end

  def self.turn_left
    raise NotImplementedError
  end

  def self.turn_right
    raise NotImplementedError
  end
end