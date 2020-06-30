class RotationalCipher

  ALPHABET = ("a".."z")

  def initialize(original_message, rot_number)
    @original_message = original_message
    @rot_number = rot_number
  end

  def encrypt
    cipher = ""

    @original_message.each_char do |c|
      if ALPHABET.include?(c.downcase)
        @rot_number.times { c = c.next }
      end
      cipher << c[-1]
    end
    cipher
  end
end
