require "pry"

class PigLatinizer
    attr_accessor :piglatinized_phrase

    def piglatinize(word)
        if word.split(" ").length == 1
            piglatinize_word(word)
        else
            piglatinized_sentence(word)
        end
    end

    def to_pig_latin(phrase)
        word_array = phrase.split(" ")
        @piglatinized_phrase = word_array.collect {|word| piglatinize(word)}.join(" ")
    end

    def piglatinize_word(word)
        if !constant?(word[0])
            word += "w"
        elsif constant?(word[0]) && constant?(word[1]) && constant?(word[2])
            
            word = word.slice(3..-1) + word.slice(0,3)
        elsif constant?(word[0]) && constant?(word[1])
            word = word.slice(2..-1) + word.slice(0,2)
        else
            word = word.slice(1..-1) + word.slice(0)
        end
        word << "ay"
    end
    
    def piglatinized_sentence(sentence)
        sentence.split.collect{|word| piglatinize_word(word)}.join(' ')
    end


    def constant?(char)
        !char.match(/[aeiouAEIOU]/)
    end
end

