class Way_Matrix

  def initialize
    @matrix = [[0, 0, 0, 0, 0, 0, 0],
               [0, 0, 0, 1, 0, 0, 0],
               [0, 0, 2, 3, 4, 0, 0],
               [0, 5, 6, 7, 8, 9, 0],
               [0, 0, 'A', 'B', 'C', 0, 0],
               [0, 0, 0, 'D', 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 0]]
  end

  def element_exist?(x, y)
    @matrix[y][x] != 0 ? true : false
  end

  def get_element(x, y)
    @matrix[y][x]
  end

end