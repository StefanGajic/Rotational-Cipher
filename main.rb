require_relative "lib/rotational_cipher"

print "How many times would you like to encrypt? "
input_number = gets.chomp.to_i

if input_number <= 26
  print "What would you like to encrypt? "

  while input_text = gets.chomp
    case input_text
    when "1"
      puts "Thank you, hope to see you again!"
      break
    else
      print "You successfully encrypted '#{input_text}' #{input_number} times: "
      rc = RotationalCipher.new(input_number)
      puts rc.encrypt(input_text)
      print "If you want to exit press '1', or you want to encrypt again? "
    end
  end

else
  puts "Please use number 26 or less."
end
