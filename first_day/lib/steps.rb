class Steps

  def initialize(moves = FileInput.new.moves)
    @moves = moves
  end

  def steps
    steps = []
    @moves.each do |move|
      steps_number = move.scan(/\d+/).join.to_i
      step_side = move.chars.first
      steps << [step_side, steps_number]
    end
    steps
  end
end
