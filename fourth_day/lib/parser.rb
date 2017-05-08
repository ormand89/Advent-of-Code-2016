module Parser

  def parametres(string)
    [] << id(string) << checksum(string) << room_name(string)
  end

  private
  def id(string)
    string.scan(/\d+/).join.to_i
  end

  def checksum(string)
     string.scan(/\[\w+\]/).join.gsub(/\[|\]/, "").to_s
  end

  def room_name(string)
    string.gsub(/-\d{1,}\[.+\]/, "").gsub(/-/, "").to_s
  end

end

