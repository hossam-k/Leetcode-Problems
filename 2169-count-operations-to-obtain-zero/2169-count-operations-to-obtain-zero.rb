# @param {Integer} num1
# @param {Integer} num2
# @return {Integer}
def count_operations(num1, num2)
    ops = 0
    while(num1 != 0 && num2 != 0) do
        if(num1 >= num2)
            num1 = num1 - num2
        else
            num2 = num2 - num1
        end
        ops = ops + 1
    end
    ops
end