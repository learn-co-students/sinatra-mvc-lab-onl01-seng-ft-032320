class PigLatinizer
  attr_accessor :piglatinized_phrase

  def piglatinize(phrase)
    words = phrase.split(" ")
    @piglatinized_phrase = words.map do |word|
      if word.downcase.index(/[aeiou]/) == 0
        "#{word}way"
      else
        vowel_start = word.index(/[aeiou]/)
        sliced = word.slice!(0..(vowel_start - 1))
        "#{word}#{sliced}ay"
      end
    end.join(" ")
    @piglatinized_phrase
  end
end
