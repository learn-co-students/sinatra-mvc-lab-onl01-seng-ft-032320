

class PigLatinizer
  attr_accessor :piglatinized_phrase

  def piglatinize_word(word) #pig latinizes a single word
    #if it contains a vovel on the first letter of the word enter the if statement and add way to the   end of the input
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
    @piglatinized_phrase = word_array.collect {|word| piglatinize_word(word)}.join(" ")
  end

end
