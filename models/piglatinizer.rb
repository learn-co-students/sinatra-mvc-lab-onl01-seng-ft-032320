require 'pry'
class PigLatinizer 
  attr_reader :input 

  def initialize
    @input = input
  end

  def piglatinize(input)
    if input.split(" ").length == 1
      change_word(input)
    elsif input.split(" ").length > 1
      change_sentence(input) 
    end 
  end 

  def change_word(word)
    if vowel?(word[0])
      word + "way"
    else 
      word + (word.slice!(/^[^aeiouAEIOU]*/i || "")) + "ay"
    end 
  end 
  
  def change_sentence(sentence)
    sentence.split.collect{|word| change_word(word)}.join(" ")
  end 

  def vowel?(letter)
    letter.match(/[AEIOUaeiou]/)
  end 
 
end 