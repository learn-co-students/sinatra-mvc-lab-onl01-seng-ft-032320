class PigLatinizer

    attr_reader :text

    def initialize
        @text = text
    end
    
    def piglatinize(text)
        words = text.split(" ")
        ordsway = words.map { |w| piglatinize_word(w)}
        ordsway.join(" ")
     end

    def piglatinize_word(word)
        f_letter = word[0].downcase

        if ["a", "e", "i", "o", "u"].include?(f_letter)
            "#{word}way"
        else
            consonants = []
            consonants << word[0]
              if ["a", "e", "i", "o", "u"].include?(word[1]) == false
                consonants << word[1]
                if ["a", "e", "i", "o", "u"].include?(word[2]) == false
                  consonants << word[2]
                end
              end
            "#{word[consonants.length..-1] + consonants.join + "ay"}"
        end
    end
end