require 'digest'

class PasswordGenerator

  DOOR_ID = 'wtnhxymk'
  START_SYMBALS = '00000'

  def initialize(door_id = DOOR_ID)
    @door_id = door_id
    @integer_index = 0
  end

  def password_from_hash
    password = ''
    while password.length < 8
      @integer_index += 1
      password += hash_code[5] if valid_hash?
    end
    password
  end

  def password_from_hash_with_position
    password = '*' * 8
    while password.include?('*')
      @integer_index += 1
      if valid_hash?
        position = Integer(hash_code[5], 16)
        if valid_position?(position)
          password[position] = hash_code[6] if password[position] == '*'
        end
      end
    end
    password
  end

  private

  def hash_code
    Digest::MD5.hexdigest("#{@door_id}#{@integer_index}")
  end

  def valid_hash?
    hash_code.start_with?(START_SYMBALS)
  end

  def valid_position?(position)
    (0..7).include?(position)
  end
end