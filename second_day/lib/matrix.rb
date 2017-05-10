# Those class does not have any state. That means that it should behave as simple class lib.
# initialize method doesn't accept any params that vary class state

module Matrix # Use correct class names!!
  MATRIX = [[0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 1, 0, 0, 0],
           [0, 0, 2, 3, 4, 0, 0],
           [0, 5, 6, 7, 8, 9, 0],
           [0, 0, 'A', 'B', 'C', 0, 0],
           [0, 0, 0, 'D', 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0]]

  def element_valid?(x, y)
    MATRIX[y][x] != 0 # @matrix[y][x] != 0 condition already returns true or false. No needed to
                                      # return it manually
  end

  def element(x, y) #this method behaves like usual property. Use simple name without additional prefix 'get_'
    MATRIX[y][x]
  end
end