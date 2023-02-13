#Asks for input until it doesn't contain numbers
puts "What would you like to encrypt?"
loop do
  string = gets
  split_word = string.split
  unless split_word.any? {|element| element.to_i > 0}
    break
  end
end

#Asks for input until it is an integer
puts "And what would the shifting factor be?"
loop do
  shift = gets.to_i
  if shift > 0
    break
  end
end

