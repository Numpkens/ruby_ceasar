def caesar_cipher(string, shift)
  result = ""
#Create hash
  alphabet = {
    'a' => 1, 'b' => 2, 'c' => 3, 'd' => 4, 'e' => 5,
    'f' => 6, 'g' => 7, 'h' => 8, 'i' => 9, 'j' => 10,
    'k' => 11, 'l' => 12, 'm' => 13, 'n' => 14, 'o' => 15,
    'p' => 16, 'q' => 17, 'r' => 18, 's' => 19, 't' => 20,
    'u' => 21, 'v' => 22, 'w' => 23, 'x' => 24, 'y' => 25, 'z' => 26
  }
#Create inverted hash
  reverse_alphabet = alphabet.invert
#Check and correct letter case
  string.each_char do |char|
    if alphabet.key?(char.downcase)
      is_upcase = char == char.upcase
      value = alphabet[char.downcase]
#Add shift   
      new_value = value + shift

#Ensure looping
      if new_value > 26
        new_value = new_value % 26
        new_value = 26 if new_value == 0
      end

#Return new letter    
      new_char = reverse_alphabet[new_value]
      result += is_upcase ? new_char.upcase : new_char
    else 
      result += char
    end
  end

  result
end

#TEST
puts caesar_cipher("What a string!", 5)
puts caesar_cipher("abcz", 1)