module Dictionary

  def count_checksum(string)
    checksum = ''
    dictionary = Hash.new(0)
    checksum_size = 5
    string.each_char {|symbol| dictionary[symbol] += 1 }
    checksum_size.times do |i|
      checksum += dictionary.sort_by {|k, v| [-v, k]}.to_h.keys[i].to_s
    end
    checksum
  end

end