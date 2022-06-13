# @param {String[]} operations
# @return {Integer}
def final_value_after_operations(operations)
    x, i = 0, 0
    while(i < operations.length)
        x = x + 1 if operations[i] == 'X++' || operations[i] == '++X'
        x = x - 1 if operations[i] == 'X--' || operations[i] == '--X'
        i = i + 1
    end
    x
end