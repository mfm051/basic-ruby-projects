def get_alphabet
    letters = []
    ("a".."z").each { |letter| letters.push letter }
    letters
end

def get_letters_info(string)
    alphabet = get_alphabet
    string_parts = string.split('')
    letters_info = []
    string_parts.each do |element|
            letter_info = {}
            letter_info[:symbol] = element
            if ( element == element.upcase )
                letter_info[:upcase] = true
            end
            if ( alphabet.include?(element.downcase) )
                letter_num = alphabet.index(element.downcase)
                letter_info[:num] = letter_num
            end
            letters_info.push(letter_info)
        end
    letters_info
end

def get_shifted_letters(letters_info,shift_num)
    alphabet = get_alphabet
    shifted_letters = letters_info.each do |letter_info|
        if letter_info.has_key?(:num) && ( letter_info[:num] + shift_num >= 26 )
            letter_info[:num] += shift_num - 26
        elsif letter_info.has_key?(:num)
            letter_info[:num] += shift_num
        end

        if alphabet.include?( letter_info[:symbol] )
            letter_info[:symbol] = alphabet[ letter_info[:num] ]
        end
    end
    shifted_letters
end

def get_string_from_letters(letters_info)
    letters = []
    letters_info.each do |letter_info|
        if letter_info[:upcase] == true
            letters.push( letter_info[:symbol].upcase )
        else
            letters.push( letter_info[:symbol] )
        end
    end
    letters.join('')
end

def caesar_cipher(string,shift_num)
    letters_info = get_letters_info(string)
    shifted_letters = get_shifted_letters(letters_info, shift_num)
    shifted_string = get_string_from_letters(shifted_letters)
    puts shifted_string
end
            