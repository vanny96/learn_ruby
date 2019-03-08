#write your code here
def translate line
    @words = line.split
    @newWords = []
    @words.each do |word|
        @counter = giveCounter(word)
        if @counter > 0
            @newWord = word[@counter..-1] + word[0..@counter-1] + "ay"
        else
            @newWord = word + "ay"
        end
        @newWords << @newWord
    end
    @newWords.join(" ")
end

def giveCounter line
    @letters = line.split("")
    @counter = 0
        
    for i in 0..@letters.length do
        if @letters[i] != "a" &&
           @letters[i] != "e" &&
           @letters[i] != "i" &&
           @letters[i] != "o" &&
           @letters[i] != "u"
           @counter += 1
        elsif @letters[i] == "u" &&
              @letters[i-1] == "q"
              @counter += 1
        else
            
            return @counter
        end
    end
    @counter
end
