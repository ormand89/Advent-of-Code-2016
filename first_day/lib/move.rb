class Move

  attr_reader :direction, :steps_count

  def initialize(raw_step)
    @raw_step = raw_step
  end

  def direction
    @direction ||= @raw_step.chars.first
  end

  def steps_count
    @steps_count ||= @raw_step.scan(/\d+/).join.to_i
  end
end
