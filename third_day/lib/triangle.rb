module Triangle

  def valid?(triangle_sides)
    a, b, c = *triangle_sides
    ((a + b > c) && (a + c > b) && (b + c > a))
  end
end

