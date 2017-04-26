class Triangle

  @@count = 0

  def initialize(line)
    @a, @b, @c = line
    @@count += 1
  end

  def self.can_exist?(line)
    a, b, c = line
    ((a.to_i + b.to_i > c.to_i) && (a.to_i + c.to_i > b.to_i) && (b.to_i + c.to_i > a.to_i)) ? true : false
  end

  def self.get_count
    puts @@count
  end
end