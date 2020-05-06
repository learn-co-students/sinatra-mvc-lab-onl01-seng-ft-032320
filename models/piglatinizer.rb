class PigLatinizer
  
    def piglatinize_word(word)
        if word.downcase.index(/[aeiou]/) == 0
            word + "way"
        else
            vowel_index = word.index(/[aeiou]/)
            front_end = word.slice!(0..vowel_index-1)
            word + front_end +"ay"
        end
    end
    
    def piglatinize(phrase)
        word_array = phrase.split(" ")
        piglatinized_phrase = word_array.collect do |word|
            piglatinize_word(word)
        end
        
        piglatinized_phrase.join(" ")
    end
end