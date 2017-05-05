class ShiftCipher

  def self.shift(string, id)
    charline = ''
    string.each_char {|char| charline += ((char.ord - 'a'.ord + id) % 26 + 'a'.ord).chr}
    charline
  end

end