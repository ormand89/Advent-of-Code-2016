module Dictionary

  def count_checksum(name)
    checksum = ''
    dictionary = Hash.new(0)
    checksum_size = 5
    name.each_char {|character| dictionary[character] += 1 }
    checksum_size.times do |i|
      checksum += dictionary.sort_by {|k, v| [-v, k]}.to_h.keys[i].to_s
    end
    checksum
  end
end