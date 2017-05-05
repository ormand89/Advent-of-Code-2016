class Dictionary

  def self.count_checksum(string)
    checksum = ''
    dictionary = Hash.new
    string.each_char {|symbol| dictionary.has_key?(symbol) ? dictionary[symbol] += 1 : dictionary[symbol] ||= 1}
    for i in 0..4 do
      checksum += dictionary.sort_by {|k, v| [-v, k]}.to_h.keys[i].to_s
    end
    checksum
  end

end