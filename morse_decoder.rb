MY_ABC = {
  'a' => '.-',
  'b' => '-...',
  'c' => '-.-.',
  'd' => '-..',
  'e' => '.',
  'f' => '..-.',
  'g' => '--.',
  'h' => '....',
  'i' => '..',
  'j' => '.---',
  'k' => '-.-',
  'l' => '.-..',
  'm' => '--',
  'n' => '-.',
  'o' => '---',
  'p' => '.--.',
  'q' => '--.-',
  'r' => '.-.',
  's' => '...',
  't' => '-',
  'u' => '..-',
  'v' => '...-',
  'w' => '.--',
  'x' => '-..-',
  'y' => '-.--',
  'z' => '--..'
}

def decode_char(char)
  MY_ABC.each do |key, value|
    return key.upcase if value == char
  end
end

def decode_word(word)
  newWord = ""
  newArr = word.split(" ")
  newArr.each do |value|
    newWord +=  decode_char(value)
  end
  return newWord
end

def decode(text)
  newWord = ""
  newArr = text.split("   ")
  newArr.each do |value|
    newWord +=  decode_word(value) + " "
  end
  print newWord
end
decode "      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."