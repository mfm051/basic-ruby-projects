    def get_substrings (string, dictionary)
        string = string.downcase
        substrings = {}
        dictionary.each do |word|
            if string.include?(word)
                word_count = string.scan(word).length
                substrings[word] = word_count
            end
        end
        return "No matches found" if substrings.empty?
        substrings
    end