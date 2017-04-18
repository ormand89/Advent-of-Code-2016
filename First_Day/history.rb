require 'singleton'
class History

  @hashtable = {[0, 0].to_s => 1}
  @exterminate = 0
  @first_repeat = "absent"

  def self.update_position(new_position)
    if @exterminate == 0
      if @hashtable.has_key?(new_position.to_s)
      @first_repeat = new_position.to_s
      @hashtable[new_position.to_s] = 1
      @exterminate += 1
      else
      @hashtable[new_position.to_s] = 1
      end
    end
  end
  
  def self.get_first
    puts @first_repeat
  end
  
end