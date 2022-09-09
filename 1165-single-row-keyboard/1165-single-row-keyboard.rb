# @param {String} keyboard
# @param {String} word
# @return {Integer}
def calculate_time(keyboard, word)
    initial_index,j, total_distance = 0,0,0
    hash = convert_to_hash(keyboard)
    while(j < word.length)
        total_distance = total_distance + (initial_index - hash[word[j]]).abs
        initial_index = hash[word[j]]
        j = j + 1
    end
    total_distance
end

def convert_to_hash(keyboard)
    i,hash = 0,{}
    while(i<keyboard.length)
        hash[keyboard[i]] = i
        i = i + 1
    end
    hash
end
