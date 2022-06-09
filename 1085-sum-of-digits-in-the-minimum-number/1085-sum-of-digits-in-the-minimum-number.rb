# @param {Integer[]} nums
# @return {Integer}
def sum_of_digits(nums)
    i = 0
    min = nums[0]
    sum = 0
    while(i < nums.length) do
        min = nums[i] if nums[i] < min
        i = i + 1
    end
    while(min > 0) do
          sum = sum + (min % 10)
          min = min / 10
    end
    sum % 2 == 0 ? 1 : 0
        
end