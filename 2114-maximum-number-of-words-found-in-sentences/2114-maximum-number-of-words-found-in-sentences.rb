# @param {String[]} sentences
# @return {Integer}
def most_words_found(sentences)
    i = 0
    max = 0
    while( i < sentences.length)
        max = count_words(sentences[i]) if count_words(sentences[i]) > max
        i = i + 1
    end
    max
end

def count_words(str)
    str.split(" ").count
end