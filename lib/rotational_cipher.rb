class RotationalCipher
  LOW_ALPHABET = ("a".."z").to_a
  HIGH_ALPHABET = ("A"..."Z").to_a
  MAX_NUMBER = 26

  def initialize(rot_number)
    if rot_number <= MAX_NUMBER
      @rot_number = rot_number
      @valid_number = true
    else
      @valid_number = false
    end
  end

  def valid_number?
    @valid_number
  end

  def encrypt(message)
    cipher = ""

    message.each_char.map do |char|
      if LOW_ALPHABET.include?(char)
        index = LOW_ALPHABET.index(char)
        shift = (index + @rot_number) % MAX_NUMBER
        cipher << LOW_ALPHABET[shift]
      elsif HIGH_ALPHABET.include? char
        index = HIGH_ALPHABET.index(char)
        shift = (index + @rot_number) % MAX_NUMBER
        cipher << HIGH_ALPHABET[shift]
      else
        cipher << char
      end
    end
    cipher
  end
end
