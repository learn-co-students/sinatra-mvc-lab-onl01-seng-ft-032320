require 'pry'

class PigLatinizer 

    def piglatinize(words)
        return "#{words}way" if(words.length == 1)
        words_array = words.split(" ")
    
        new_words = words_array.collect do |word|
          self.turn_word_to_pig_latin(word)
        end
        new_words.join(" ")
      end
    
      def turn_word_to_pig_latin(word)
        first_letter = word[0]
        rest_of_word = word[1..]
    
        vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        consonants = [first_letter]
    
        return "#{word}way" if(vowels.include?(first_letter))
    
        rest_of_word.split("").each do |letter|
          if(vowels.include?(letter))
            return "#{word[word.index(letter)..] + consonants.join + "ay"}"
          else
            consonants << letter
          end
        end
      end
      
end 