# @param {String} s
# @return {Integer}
def roman_to_int(s)
    letters = {
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    }
    i, sum = s.length - 1, 0
    while( i >= 0)
        p = (i == s.length - 1) ? i : i + 1  
        
        if(letters[s[i].to_sym] >= letters[s[p].to_sym])
            sum = sum + letters[s[i].to_sym]
        else
            sum = sum - letters[s[i].to_sym]
        end       
        i = i - 1
    end
    sum
end