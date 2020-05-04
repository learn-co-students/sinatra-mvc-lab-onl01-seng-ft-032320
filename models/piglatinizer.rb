class PigLatinizer
    # attr_reader :text
    # def initialize(text)
    #     @text = text
    # end 

    def piglatinize(text)
        text_array = text.split
        text_array.map{|word| piglatinize_word(word)}.join(" ")
    end

    def piglatinize_word(word)
        arr = word.split("")
        arr << "w" if vowel?(arr[0])
        if arr.length > 1
            vowel_ind = arr.index{|l| vowel?(l)}
            new_arr = arr.drop(vowel_ind) + arr.take(vowel_ind) + ["ay"]
        else 
            new_arr = arr + ["ay"]
        end
        new_arr.join
    end

    def vowel?(letter)
        vowels = %w[a e i o u A E I O U]
        vowels.include?(letter)
    end
end