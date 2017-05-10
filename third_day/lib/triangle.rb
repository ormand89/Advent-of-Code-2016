module Triangle

  def valid?(line)
    a, b, c = line.map(&:to_i)
    ((a + b > c) && (a + c > b) && (b + c > a))
  end
end

