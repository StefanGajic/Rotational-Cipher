require_relative "lib/rotational_cipher"

print "How many times would you like to encrypt? "
input_number = gets.chomp.to_i

if input_number <= 26

  print "What would you like to encrypt? "
  input_text = gets.chomp
  puts "You successfully encrypted '#{input_text}' #{input_number} times:"
  rc = RotationalCipher.new(input_text, input_number)

  puts rc.encrypt
else
  puts "Please use number 26 or less."
end
