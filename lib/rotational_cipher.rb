class CeasarChiper
    attr_reader :text, :number

    def initialize(text, number)
        @text = text
        @number = number
    end

    ALPHABET = ("a".."z")

    def caesar_cipher
         
        cipher = ""
        
        text.each_char do |i|    
    
            if ALPHABET.include? (i.downcase)
                number.times {i = i.next}    
            end    
        cipher << i[-1]
    
        end
      cipher
    end
 end