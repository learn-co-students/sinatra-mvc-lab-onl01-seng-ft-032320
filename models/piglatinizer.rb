require 'pry'

class PigLatinizer
  attr_accessor :piglatin_phrase

  def piglatinize_word(word)
    if word.downcase.index(/[aeoui]/) == 0
      word + "way"
    else
      first_vowel = word.index(word.match(/a|e|i|o|u/).to_s)
      first_letters = word.slice!(0..first_vowel-1)
      word + first_letters + "ay"
    end
  end

  def piglatinize(phrase)
    word_array = phrase.split(" ")
    word_array.collect {|word| piglatinize_word(word)}.join(" ")
  end
end
