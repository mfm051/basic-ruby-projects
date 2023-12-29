class CaesarCipher
  ALPHABET = ('a'..'z').to_a

  def self.shift(string, shift_factor)
    string.chars.map do |letter|
      next letter unless ALPHABET.include? letter.downcase

      letter_index = ALPHABET.index(letter.downcase)

      result_letter = ALPHABET[(letter_index + shift_factor) % 26]

      letter == letter.upcase ? result_letter.upcase : result_letter
    end
    .join
  end
end
