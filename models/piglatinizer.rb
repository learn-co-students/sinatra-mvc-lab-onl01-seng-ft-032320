class PigLatinizer
   attr_accessor :text

   def piglatinize(words)
      words.split.collect do |word| 
         v_postion = word.index(/[aeiouAEIOU]/)
         prefix = word.slice(0,v_postion)
            if v_postion >= 1 && word.length > 1
               word.sub(word.slice(0,v_postion),"")+ prefix + "ay"
            else
               word+"way"
            end
       end.join(" ")
   end

end