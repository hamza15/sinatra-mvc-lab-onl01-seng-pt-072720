class PigLatinizer 
    def piglatinize(sentence)
        words = sentence.split(" ")
        new_sentence = []
        words.each do |word|
            if word[0].scan(/[aeoui]/i).empty? && word[1].scan(/[aeoui]/i).empty? && word[2].scan(/[aeoui]/i).empty?
                new_sentence << "#{word[3..-1]}#{word[0]}#{word[1]}#{word[2]}ay"
            elsif word[0].scan(/[aeoui]/i).empty? && word[1].scan(/[aeoui]/i).empty?
                new_sentence << "#{word[2..-1]}#{word[0]}#{word[1]}ay"
            elsif word[0].scan(/[aeoui]/i).empty?
                new_sentence << "#{word[1..-1]}#{word[0]}ay"
            else 
                new_sentence << "#{word}way"
            end 
        end 
        new_sentence.join(" ")
    end 
end 