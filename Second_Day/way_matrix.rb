# Those class does not have any state. That means that it should behave as simple class lib.
# initialize method doesn't accept any params that vary class state

class Way_Matrix # Use correct class names!!

  def initialize
    # can be moved to constant
    @matrix = [[0, 0, 0, 0, 0, 0, 0],
               [0, 0, 0, 1, 0, 0, 0],
               [0, 0, 2, 3, 4, 0, 0],
               [0, 5, 6, 7, 8, 9, 0],
               [0, 0, 'A', 'B', 'C', 0, 0],
               [0, 0, 0, 'D', 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 0]]
  end

  def element_exist?(x, y)
    @matrix[y][x] != 0 ? true : false # @matrix[y][x] != 0 condition already returns true or false. No needed to
                                      # return it manually
  end

  def get_element(x, y) #this method behaves like usual property. Use simple name without additional prefix 'get_'
    @matrix[y][x]
  end

end