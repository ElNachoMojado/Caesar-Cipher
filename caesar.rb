#Asks for input until it doesn't contain numbers
puts "What would you like to encrypt?"
string = gets
loop do
  unless string.split('').any? {|element| element.to_i > 0} 
    break
  else
    string = gets
  end
end
string = string.split('').to_a
puts string

#Asks for the number of positions the letter are to be shifted
puts "And what would the shifting factor be?"
shift = gets.to_i

def caesar_cipher (string, shift)
  alphabet = ('a'..'z').to_a
  caps_alphabet = ('A'..'Z').to_a
  encrypted_word = []
  for character in string do
    alphabet.each_index do |index|
      if character == alphabet[index]
        encrypted_word.push(alphabet[index+shift])
      elsif character == caps_alphabet[index]
        encrypted_word.push(caps_alphabet[index+shift])
      end
    end
  end
  puts encrypted_word.join('')   
end

caesar_cipher(string, shift)