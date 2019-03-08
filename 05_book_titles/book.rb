class Book
    attr_accessor :title
    def title=(new_title)
        words = new_title.split
        words.each do |word|
            if word == words[0]
                word.capitalize!
            elsif word != "the" &&
                  word != "a" &&
                  word != "an" &&
                  word != "and" &&
                  word != "of" &&
                  word != "in"
                word.capitalize!
            end
        end
        @title = words.join(" ")
    end
end
