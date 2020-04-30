class PigLatinizer

    #### Attributes ####
    #### Instance Methods ####
    def initialize
    end

    def piglatinize(phrase)
        @phrase_array = phrase.split(' ')
        @converted_array = []

        @phrase_array.each do |word|
            if (word =~ /[aeiou]/i) == 0
                @converted_array << word + "way"
            else
                @word_array = word.split('')
                until !(@word_array[0] =~ /[aeiou]/i).nil?
                    @word_array.rotate!
                end
                @converted_array << @word_array.join + "ay"
            end
        end
        @converted_array.join(' ')
    end

    #### Class Methods####

end
