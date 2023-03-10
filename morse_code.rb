require 'morse'

class MorseCode
  MORSE_CODE = {
    '.-' => 'A',
    '-...' => 'B',
    '-.-.' => 'C',
    '-..' => 'D',
    '.' => 'E',
    '..-.' => 'F',
    '--.' => 'G',
    '....' => 'H',
    '..' => 'I',
    '.---' => 'J',
    '-.-' => 'K',
    '.-..' => 'L',
    '--' => 'M',
    '-.' => 'N',
    '---' => 'O',
    '.--.' => 'P',
    '--.-' => 'Q',
    '.-.' => 'R',
    '...' => 'S',
    '-' => 'T',
    '..-' => 'U',
    '...-' => 'V',
    '.--' => 'W',
    '-..-' => 'X',
    '-.--' => 'Y',
    '--..' => 'Z'
  }.freeze

  def self.decode_char(morse_char)
    MORSE_CODE[morse_char]
  end

  def self.decode_word(morse_word)
    morse_chars = morse_word.split
    chars = morse_chars.map { |morse_char| decode_char(morse_char) }
    chars.join
  end

  def self.decode(message)
    morse_words = message.split('   ')
    words = morse_words.map { |morse_word| decode_word(morse_word) }
    words.join(' ')
  end
end

# To decode the message from the old bottle, use the following IRB:
message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
MorseCode.decode(message)
# Output: "ABX FULL OF S"
