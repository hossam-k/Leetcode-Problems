# @param {Integer} num
# @return {Integer}
def add_digits(num)
    sum = 0
    while(num >9) do
        sum = 0
        # Extract Digits to sum
        while(num !=0) do
            sum = sum + (num % 10)
            num = num / 10
        end
        num = sum
        sum = 0
    end
    num
end