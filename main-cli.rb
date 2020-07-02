require_relative "lib/rotational_cipher"

input_number = ARGV[0].to_i
input_text = ARGV[1]

puts "You successfully encrypted '#{input_text}' #{input_number} times:"
rc = RotationalCipher.new(input_number)

puts rc.encrypt(input_text)
