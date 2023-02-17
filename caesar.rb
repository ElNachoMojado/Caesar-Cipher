

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
string = string.split(' ').map {|word| word.split('')}.to_a


#Asks for the number of positions the letter are to be shifted
puts "And what would the shifting factor be?"
shift = gets.to_i

def caesar_cipher (string, shift)
  alphabet = ('a'..'z').to_a
  caps_alphabet = ('A'..'Z').to_a
  encrypted_word = Array.new(string.length) {[]}
  wrap = 0
  string.each_index do |word_index|
    string[word_index].each_index do |letter_index|
      alphabet.each_index do |index|
        if string[word_index][letter_index] == alphabet[index]
          if shift + index > 26
            wrap = shift + index - 26
            encrypted_word[word_index].push(alphabet[wrap])
          else
            encrypted_word[word_index].push(alphabet[shift + index])
          end
        elsif string[word_index][letter_index] == caps_alphabet[index]
          if shift + index > 26
            wrap = shift + index - 26
            encrypted_word[word_index].push(caps_alphabet[wrap])
          else
            encrypted_word[word_index].push(caps_alphabet[shift + index])
          end
        end
      end
    end
  end
  puts encrypted_word.map {|letters| letters.join('')}.join(' ')
  
end

caesar_cipher(string, shift)