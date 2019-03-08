#write your code here
def echo line
    line
end
def shout line
    line.upcase
end
def repeat line, times = 2
    puts times
    finalLine = ""
    times.times do
        finalLine = finalLine + line + " "
    end
    finalLine.strip
end
def start_of_word line, length
    line[0, length]
end
def first_word line
    words = line.split()
    words[0]
end
def titleize line
    words = line.split()
    words.each do |word|
        if word == words[0]
            word.capitalize!
        elsif word != "of"  &&
           word != "and" &&
           word != "in" &&
           word != "over" &&
           word != "the"

            word.capitalize!
        end
    end
    words.join(" ")
end

