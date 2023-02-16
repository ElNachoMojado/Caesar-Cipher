

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

#Asks for the number of positions the letter are to be shifted
puts "And what would the shifting factor be?"
shift = gets.to_i

#alphabet = ('a'..'z').to_a
#print alphabet

def caesar_cipher (string, shift) 
end