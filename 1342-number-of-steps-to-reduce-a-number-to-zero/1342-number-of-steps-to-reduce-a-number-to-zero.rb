# @param {Integer} num
# @return {Integer}
def number_of_steps(num)
    steps = 0
    while(num > 0) do
        if(num % 2 ==0)
            steps = steps + 1
            num = num / 2
        else
            steps = steps + 1
            num = num - 1
        end
    end
    steps
end