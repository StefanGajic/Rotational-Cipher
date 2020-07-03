class RotationalCipher
  LOW_ALPHABET = ("a".."z").to_a
  HIGH_ALPHABET = ("A"..."Z").to_a
  MAX_NUMBER = 26

  def initialize(rot_number)
    if rot_number > MAX_NUMBER
      raise ArgumentError.new("number is above 26")
    else
      @rot_number = rot_number
    end
  end

  def encrypt(message)
    cipher = ""

    message.each_char.map do |char|
      if index = LOW_ALPHABET.index(char)
        shift = (index + @rot_number) % MAX_NUMBER
        cipher << LOW_ALPHABET[shift]
      elsif index = HIGH_ALPHABET.index(char)
        shift = (index + @rot_number) % MAX_NUMBER
        cipher << HIGH_ALPHABET[shift]
      else
        cipher << char
      end
    end
    cipher
  end
end
