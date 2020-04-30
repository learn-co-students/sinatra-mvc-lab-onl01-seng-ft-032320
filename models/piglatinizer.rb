class PigLatinizer
    attr_reader :text

    def piglatinize(text)
        @vowel = %w[a e i o u y]
        @phrase = text.split(" ")
        @piglatin_word =[]
        @phrase.each do |word|
            if @vowel.include?(word[0].downcase)
                @piglatin_word << word + "way"
            else
                w = word
                while !@vowel.include?(w[0].downcase)
                w = w.slice(1..-1) + w[0]
                end
                @piglatin_word << w + "ay"
            end               
        end
        @piglatin_word.join(" ")
    end
end

