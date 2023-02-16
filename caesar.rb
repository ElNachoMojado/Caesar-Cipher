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

#Asks for the number of positions the letter are to be shifted
puts "And what would the shifting factor be?"
shift = gets.to_i

def caesar_cipher (string, shift)
  alphabet = ('a'..'z').to_a
  caps_alphabet = ('A'..'Z').to_a
  encrypted_word = []
  wrap = 0
  for character in string do
  if character == 33.chr
    encrypted_word.push(character)
    next
  end
    alphabet.each_index do |index|
      if character == alphabet[index]
        if shift + index > 26
          wrap = shift + index - 26
          encrypted_word.push(alphabet[wrap])
        else
          encrypted_word.push(alphabet[shift + index])
        end
      elsif character == caps_alphabet[index]
        if shift + index > 26
          wrap = shift + index - 26
          encrypted_word.push(caps_alphabet[wrap])
        else
          encrypted_word.push(caps_alphabet[index+shift])
        end
      end
    end
  end
  puts encrypted_word.join('') 
end

caesar_cipher(string, shift)