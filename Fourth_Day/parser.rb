
class Parser

  def self.get_id(string)
    string.match(/\d{1,}/).to_s.to_i
  end

  def self.get_checksum(string)
    string.match(/\[[[:alpha:]]+/).to_s.delete '['
  end

  def self.get_string(string)
    string.gsub(/-\d{1,}\[.+\]/, "").gsub(/-/, "")
  end

end

