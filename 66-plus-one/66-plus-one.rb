# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    integer_digit = 0
    i = 0
    arr = []
    while(i < digits.length) do
        integer_digit = integer_digit +  (digits[i] * 10**(digits.length - 1 - i))
        i = i + 1
    end
# Extracted digits
    integer_digit = integer_digit + 1
    while(integer_digit > 0) do
        arr.unshift(integer_digit % 10)
        integer_digit = integer_digit / 10
    end
    arr
end