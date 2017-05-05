module ShiftCipher

  def shift(string, id)
    shifted_phrase = ''
    alphabet_size = 26
    string.each_char {|char| shifted_phrase += ((char.ord - 'a'.ord + id) % alphabet_size + 'a'.ord).chr}
    shifted_phrase
  end

end